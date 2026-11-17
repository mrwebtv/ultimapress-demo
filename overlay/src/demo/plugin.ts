import crypto from 'crypto'
import type { CollectionAfterChangeHook, CollectionConfig, Endpoint, GlobalConfig, Plugin, PayloadRequest } from 'payload'
import { APIError, generatePayloadCookie } from 'payload'
import { Readable } from 'stream'

import { hasRole } from '@/access/roles'
import { backupPackage, createBackup } from '@/siteBackups'

import { seedDemo } from './seed'
import { addEvent, DEMO_CODE, DEMO_EMAIL, DEMO_HOME, fromLauncher, readState, sha, writeState } from './state'

/**
 * Demo mode: the full UltimaPress, minus what a stranger must not do on a shared server.
 * - No Site code or add-ons (the demo runs without the supervisor, so they are unavailable).
 * - No email settings (Private Settings are read-only), so nothing can send email.
 * - The demo login cannot be changed, and no accounts can be added or removed.
 * - Uploads up to 10 MB each.
 * - No Security or Site health pages.
 * Adds the countdown banner, the one-time login link and "Keep this site".
 */

const json = (data: unknown, status = 200) => Response.json(data, { status })
const admin = (req: PayloadRequest) => hasRole(req.user, 'admin')

function lockUsers(c: CollectionConfig): CollectionConfig {
  return {
    ...c,
    access: { ...c.access, create: () => false, delete: () => false },
    hooks: {
      ...c.hooks,
      beforeChange: [
        ...(c.hooks?.beforeChange || []),
        ({ data, originalDoc, operation, req }) => {
          if (req.context?.demo) return data
          if (operation === 'create') throw new APIError('Accounts cannot be added in the demo.', 403, null, true)
          const changed = (k: string) => data?.[k] !== undefined && data[k] !== originalDoc?.[k]
          if (data?.password || changed('email') || changed('role')) {
            throw new APIError('The demo login cannot be changed. On your own server you can change anything.', 403, null, true)
          }
          return data
        },
      ],
    },
  }
}

/** What the visitor tried, for the trial stats: published a page, wrote a post, connected an AI. */
const TRACKED: Record<string, CollectionAfterChangeHook> = {
  pages: ({ doc, req }) => {
    if (req.user && doc?._status === 'published') addEvent('published')
    return doc
  },
  posts: ({ doc, operation, req }) => {
    if (req.user && operation === 'create') addEvent('post')
    return doc
  },
  'payload-mcp-api-keys': ({ doc, operation }) => {
    if (operation === 'create') addEvent('ai')
    return doc
  },
}

const lockGlobal = (g: GlobalConfig): GlobalConfig => ({ ...g, access: { ...g.access, update: () => false } })

/** Makes a fresh "Keep this site" file and streams it. */
async function keepFile(req: PayloadRequest) {
  if (req.user) addEvent('kept')
  const info = await createBackup(req.payload, 'Keep this site', { removeUsers: [DEMO_EMAIL] })
  const tar = backupPackage(info.id)
  if (!tar) return json({ error: 'The file could not be made. Try again in a minute.' }, 500)
  return new Response(Readable.toWeb(tar) as unknown as ReadableStream, {
    headers: {
      'Content-Type': 'application/x-tar',
      'Content-Disposition': `attachment; filename="my-ultimapress-site-${new Date().toISOString().slice(0, 10)}.tar"`,
      'Cache-Control': 'no-store',
    },
  })
}

const endpoints: Endpoint[] = [
  {
    // up-security: public on purpose, only the demo's end time and public links (shown in the banner on the site too)
    path: '/up/demo',
    method: 'get',
    handler: async () => {
      const s = readState()
      return json({ assigned: Boolean(s.assigned), expiresAt: s.expiresAt || null, code: DEMO_CODE, home: DEMO_HOME })
    },
  },
  {
    path: '/up/demo/ping',
    method: 'post',
    handler: async (req) => {
      if (!req.user) return json({ error: 'Log in first' }, 401)
      const b = ((await req.json?.().catch(() => ({}))) || {}) as { active?: unknown; builder?: unknown }
      const now = Date.now()
      const s = readState()
      const change: Record<string, unknown> = { lastSeen: now }
      if (b.active === true) {
        change.lastActive = now
        // One minute of use at most per 50 seconds, however often it is called.
        if (!s.lastCounted || now - s.lastCounted >= 50_000) {
          change.activeMinutes = (s.activeMinutes || 0) + 1
          change.lastCounted = now
        }
      }
      writeState(change)
      if (b.builder === true) addEvent('builder')
      return json({ ok: true })
    },
  },
  {
    path: '/up/demo/done',
    method: 'post',
    handler: async (req) => {
      if (!admin(req)) return json({ error: 'Administrators only' }, 403)
      writeState({ done: true })
      return json({ ok: true, next: `${DEMO_HOME}/ended/${DEMO_CODE}` })
    },
  },
  {
    path: '/up/demo/keep',
    method: 'get',
    handler: async (req) => {
      if (!admin(req)) return json({ error: 'Administrators only' }, 403)
      return keepFile(req)
    },
  },
  {
    // up-security: public on purpose, the one-time login link; works once, only with the token the launcher gave the visitor
    path: '/up/demo/login',
    method: 'get',
    handler: async (req) => {
      const url = new URL(req.url || '', 'http://demo')
      const token = url.searchParams.get('t') || ''
      const s = readState()
      const valid =
        s.assigned && !s.tokenUsed && s.tokenHash && token.length >= 32 && crypto.timingSafeEqual(sha(token), Buffer.from(s.tokenHash, 'hex'))
      if (!valid) return new Response(null, { status: 302, headers: { Location: '/admin' } })
      writeState({ tokenUsed: true, lastSeen: Date.now() })
      const p = req.payload
      const user = (await p.find({ collection: 'users', where: { email: { equals: DEMO_EMAIL } }, limit: 1, overrideAccess: true })).docs[0]
      if (!user) return json({ error: 'This demo is not ready.' }, 503)
      const password = crypto.randomBytes(24).toString('hex')
      await p.update({ collection: 'users', id: user.id, overrideAccess: true, context: { demo: true }, data: { password, name: s.name || 'Demo' } as never })
      const { token: jwt } = await p.login({ collection: 'users', data: { email: DEMO_EMAIL, password } })
      if (!jwt) return json({ error: 'Login failed' }, 500)
      const cookie = generatePayloadCookie({
        collectionAuthConfig: p.collections.users.config.auth,
        cookiePrefix: p.config.cookiePrefix,
        token: jwt,
      })
      return new Response(null, { status: 302, headers: { Location: '/admin', 'Set-Cookie': cookie } })
    },
  },
  // The launcher's endpoints: called on the demo network with this demo's key.
  {
    // up-security: launcher only; refused unless x-demo-key matches this demo's secret DEMO_KEY (timing-safe), which visitors never get: the launcher strips that header from their requests
    path: '/up/demo/internal/seed',
    method: 'post',
    handler: async (req) => {
      if (!fromLauncher(req)) return json({ error: 'Forbidden' }, 403)
      await seedDemo(req.payload)
      return json({ ok: true })
    },
  },
  {
    // up-security: launcher only; refused unless x-demo-key matches this demo's secret DEMO_KEY (timing-safe), which visitors never get: the launcher strips that header from their requests
    path: '/up/demo/internal/assign',
    method: 'post',
    handler: async (req) => {
      if (!fromLauncher(req)) return json({ error: 'Forbidden' }, 403)
      const b = ((await req.json?.().catch(() => ({}))) || {}) as { token?: unknown; expiresAt?: unknown; name?: unknown }
      if (typeof b.token !== 'string' || b.token.length < 32 || typeof b.expiresAt !== 'string') return json({ error: 'Bad request' }, 400)
      const name = typeof b.name === 'string' ? b.name.slice(0, 60) : ''
      writeState({ assigned: true, tokenHash: sha(b.token).toString('hex'), tokenUsed: false, expiresAt: b.expiresAt, name, lastSeen: Date.now() })
      return json({ ok: true })
    },
  },
  {
    // up-security: launcher only; refused unless x-demo-key matches this demo's secret DEMO_KEY (timing-safe), which visitors never get: the launcher strips that header from their requests
    path: '/up/demo/internal/state',
    method: 'get',
    handler: async (req) => {
      if (!fromLauncher(req)) return json({ error: 'Forbidden' }, 403)
      const s = readState()
      return json({
        assigned: Boolean(s.assigned),
        lastSeen: s.lastSeen || null,
        lastActive: s.lastActive || null,
        activeMinutes: s.activeMinutes || 0,
        events: s.events || [],
        done: Boolean(s.done),
        seeded: Boolean(s.seeded),
      })
    },
  },
  {
    // up-security: launcher only; refused unless x-demo-key matches this demo's secret DEMO_KEY (timing-safe), which visitors never get: the launcher strips that header from their requests
    path: '/up/demo/internal/keep',
    method: 'post',
    handler: async (req) => {
      if (!fromLauncher(req)) return json({ error: 'Forbidden' }, 403)
      return keepFile(req)
    },
  },
]

export const demoPlugin: Plugin = (config) => ({
  ...config,
  collections: (config.collections || []).map((c) => {
    if (c.slug === 'users') return lockUsers(c)
    const note = TRACKED[c.slug]
    return note ? { ...c, hooks: { ...c.hooks, afterChange: [...(c.hooks?.afterChange || []), note] } } : c
  }),
  globals: (config.globals || []).map((g) => (g.slug === 'private-settings' ? lockGlobal(g) : g)),
  upload: { ...config.upload, limits: { ...config.upload?.limits, fileSize: 10_000_000 } },
  // No Security or Site health pages in the demo (they describe the demo server, not the visitor's site).
  endpoints: [...(config.endpoints || []).filter((e) => !String(e.path).startsWith('/up/security')), ...endpoints],
  admin: {
    ...config.admin,
    components: {
      ...config.admin?.components,
      views: Object.fromEntries(
        Object.entries(config.admin?.components?.views || {}).filter(([k]) => k !== 'security' && k !== 'siteHealth'),
      ),
      header: [...(config.admin?.components?.header || []), '@/demo/Banner#DemoBanner'],
      providers: [...(config.admin?.components?.providers || []), '@/demo/Activity#DemoActivity'],
    },
  },
})
