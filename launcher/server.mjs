/**
 * UltimaPress free trial launcher (tryultimapress.com).
 *
 * - tryultimapress.com: the sign-up page (email, Turnstile), the waiting line, the end page,
 *   "Keep this site" downloads, the Hostinger link and the leads list.
 * - <code>.tryultimapress.com: passed through to that visitor's own demo container.
 *
 * Every demo is its own container (the demo image) with its own database, copied from a
 * template that already has a finished starter site. A few are kept warm so a demo opens in
 * seconds. Demos end after DEMO_MINUTES, after IDLE_MINUTES without the visitor, or when
 * they press "I'm done"; their site is saved for 7 days, then the container and database go.
 */
import crypto from 'crypto'
import fs from 'fs'
import http from 'http'
import path from 'path'
import { pipeline } from 'stream/promises'
import { Readable } from 'stream'

import { db, getMeta, ident, inDatabase, literal, setMeta, setup } from './db.mjs'
import { imageId, list, pull, remove, run } from './docker.mjs'
import { ended, landing, message, stats, waiting } from './pages.mjs'

const env = (k, d) => process.env[k] || d
const DOMAIN = env('DOMAIN', 'tryultimapress.com').toLowerCase()
const IMAGE = env('IMAGE', 'ghcr.io/mrwebtv/ultimapress-demo:latest')
const NETWORK = env('NETWORK', 'up-demos')
const HOSTING = env('HOSTING_URL', 'https://www.hostinger.com/mrwebvps')
const MAX = Number(env('MAX_DEMOS', '12'))
const POOL = Number(env('POOL', '2'))
const MINUTES = Number(env('DEMO_MINUTES', '60'))
const IDLE = Number(env('IDLE_MINUTES', '30'))
const PER_DAY_IP = Number(env('DEMOS_PER_IP_PER_DAY', '1'))
const MEMORY = Number(env('DEMO_MEMORY_MB', '768')) * 1024 * 1024
const DATA = env('DATA_DIR', '/data')
const KEPT = path.join(DATA, 'kept')
const TS_SITE = env('TURNSTILE_SITE_KEY', '')
const TS_SECRET = env('TURNSTILE_SECRET_KEY', '')
const ADMIN_PASSWORD = env('ADMIN_PASSWORD', '')
const OMNISEND_KEY = env('OMNISEND_API_KEY', '')
// PAUSED=1: the sign-up page says all slots are taken and takes no sign-ups (no email box).
const PAUSED = env('PAUSED', '') === '1'
// Emails that skip the one-demo-a-day limit (for testing), comma separated.
const UNLIMITED = new Set(env('UNLIMITED_EMAILS', '').split(',').map((e) => e.trim().toLowerCase()).filter(Boolean))

const rand = (n = 32) => crypto.randomBytes(n).toString('hex')
const log = (...a) => console.log(new Date().toISOString(), ...a)
const CODE_CHARS = 'abcdefghjkmnpqrstuvwxyz23456789'
const newCode = () => Array.from(crypto.randomBytes(6), (b) => CODE_CHARS[b % CODE_CHARS.length]).join('')
const CODE = /^[a-z0-9]{6}$/
const container = (code) => `demo-${code}`

/* ---------- Talking to a demo ---------- */

async function call(code, key, method, p, body, timeout = 30_000) {
  return fetch(`http://${container(code)}:3000${p}`, {
    method,
    headers: { 'x-demo-key': key, 'content-type': 'application/json' },
    body: body ? JSON.stringify(body) : undefined,
    signal: AbortSignal.timeout(timeout),
  })
}

async function up(code) {
  try {
    const r = await fetch(`http://${container(code)}:3000/api/up/demo`, { signal: AbortSignal.timeout(10_000) })
    return r.ok
  } catch {
    return false
  }
}

function spec({ image, code, database, user, password, key, load = false }) {
  return {
    Image: image,
    Entrypoint: ['sh', '-c'],
    // The template's container first loads the demo site (demo/site.sql in the image) into its empty database.
    Cmd: [
      `${load ? '[ ! -f /app/demo/site.sql ] || psql "$DATABASE_URL" -v ON_ERROR_STOP=1 -q -f /app/demo/site.sql || exit 1; ' : ''}exec node node_modules/next/dist/bin/next start -p 3000 -H 0.0.0.0`,
    ],
    Env: [
      `DATABASE_URL=postgres://${user}:${password}@postgres:5432/${database}`,
      `SITE_URL=https://${code}.${DOMAIN}`,
      `PAYLOAD_SECRET=${rand()}`,
      `CRON_SECRET=${rand()}`,
      `PREVIEW_SECRET=${rand()}`,
      `DEMO_KEY=${key}`,
      `DEMO_CODE=${code}`,
      `DEMO_HOME=https://${DOMAIN}`,
      'UP_DEMO=1',
      'UP_DISABLE_BACKUPS=1',
    ],
    Labels: { 'up.demo': '1', 'up.code': code },
    HostConfig: {
      NetworkMode: NETWORK,
      Memory: MEMORY,
      MemorySwap: Math.round(MEMORY * 1.5),
      NanoCpus: 1_000_000_000,
      PidsLimit: 256,
      RestartPolicy: { Name: 'no' },
      CapDrop: ['ALL'],
      SecurityOpt: ['no-new-privileges'],
      LogConfig: { Type: 'json-file', Config: { 'max-size': '5m', 'max-file': '1' } },
    },
  }
}

/* ---------- The template every demo copies ---------- */

let building = false
async function ensureTemplate() {
  if (building) return
  building = true
  try {
    const id = await pull(IMAGE).catch(async (err) => {
      log('Pull failed, using the image already here:', err.message)
      return imageId(IMAGE)
    })
    if (!id) throw new Error(`The demo image ${IMAGE} is not available.`)
    if ((await getMeta('tpl_image')) === id && (await getMeta('tpl_db'))) return
    log('Building the demo template for', id.slice(7, 19))
    const tdb = `demo_tpl_${Date.now().toString(36)}`
    const pw = rand(24)
    await db.query(`do $$ begin if not exists (select from pg_roles where rolname = 'demo_tpl') then create role demo_tpl; end if; end $$`)
    await db.query(`alter role demo_tpl login password ${literal(pw)}`)
    await db.query(`create database ${ident(tdb)}`)
    await db.query(`revoke connect on database ${ident(tdb)} from public`)
    await db.query(`grant connect, temporary on database ${ident(tdb)} to demo_tpl`)
    await inDatabase(tdb, ['grant all on schema public to demo_tpl'])
    const key = rand()
    await remove(container('seed'))
    try {
      await run(container('seed'), spec({ image: id, code: 'seed', database: tdb, user: 'demo_tpl', password: pw, key, load: true }))
      const until = Date.now() + 8 * 60_000
      while (!(await up('seed'))) {
        if (Date.now() > until) throw new Error('The template site did not start.')
        await new Promise((r) => setTimeout(r, 3000))
      }
      const r = await call('seed', key, 'POST', '/api/up/demo/internal/seed', {}, 180_000)
      if (!r.ok) throw new Error(`Seeding failed: ${r.status} ${await r.text()}`)
    } finally {
      await remove(container('seed'))
    }
    await db.query('alter role demo_tpl nologin')
    const old = await getMeta('tpl_db')
    await setMeta('tpl_db', tdb)
    await setMeta('tpl_image', id)
    if (old) await db.query(`drop database if exists ${ident(old)} with (force)`).catch(() => undefined)
    log('Template ready:', tdb)
    // Spare demos from the old version are replaced.
    const stale = await db.query(`select code from demos where status in ('warming', 'ready') and image <> $1`, [id])
    for (const d of stale.rows) await endDemo(d.code, 'new version')
  } catch (err) {
    log('Template:', err.message)
    // A half-made template is removed; the next try starts clean.
    const current = await getMeta('tpl_db').catch(() => null)
    const half = await db.query(`select datname from pg_database where datname like 'demo\\_tpl\\_%' and datname <> $1`, [current || '']).catch(() => ({ rows: [] }))
    for (const r of half.rows) await db.query(`drop database if exists ${ident(r.datname)} with (force)`).catch(() => undefined)
  } finally {
    building = false
  }
}

/* ---------- Demos ---------- */

async function createDemo() {
  const tpl = await getMeta('tpl_db')
  const image = await getMeta('tpl_image')
  if (!tpl || !image) return
  let code = newCode()
  while ((await db.query('select 1 from demos where code = $1', [code])).rowCount) code = newCode()
  const key = rand()
  const pw = rand(24)
  const name = `demo_${code}`
  await db.query(`insert into demos (code, status, image, db_password, key) values ($1, 'warming', $2, $3, $4)`, [code, image, pw, key])
  try {
    await db.query(`create role ${ident(name)} login password ${literal(pw)} connection limit 40`)
    await db.query(`create database ${ident(name)} template ${ident(tpl)} owner ${ident(name)}`)
    await db.query(`revoke connect on database ${ident(name)} from public`)
    await inDatabase(name, [`reassign owned by demo_tpl to ${ident(name)}`])
    await run(container(code), spec({ image, code, database: name, user: name, password: pw, key }))
    log('Warming', code)
  } catch (err) {
    log('Could not create a demo:', err.message)
    await endDemo(code, 'could not start')
  }
}

async function endDemo(code, reason) {
  const r = await db.query(`update demos set status = 'ending' where code = $1 and status <> 'ended' returning *`, [code])
  const d = r.rows[0]
  if (!d) return
  if (d.assigned_at && !d.kept) {
    // Their site is kept for 7 days, to download from the end page.
    try {
      const res = await call(code, d.key, 'POST', '/api/up/demo/internal/keep', {}, 5 * 60_000)
      if (res.ok && res.body) {
        fs.mkdirSync(KEPT, { recursive: true })
        const tmp = path.join(KEPT, `${code}.tar.tmp`)
        await pipeline(Readable.fromWeb(res.body), fs.createWriteStream(tmp))
        fs.renameSync(tmp, path.join(KEPT, `${code}.tar`))
        await db.query('update demos set kept = true where code = $1', [code])
      }
    } catch (err) {
      log('Could not keep', code, err.message)
    }
  }
  await remove(container(code))
  const name = `demo_${code}`
  await db.query(`drop database if exists ${ident(name)} with (force)`).catch((e) => log('drop db', code, e.message))
  await db.query(`drop role if exists ${ident(name)}`).catch((e) => log('drop role', code, e.message))
  await db.query(`update demos set status = 'ended', ended_at = now(), end_reason = $2 where code = $1`, [code, reason])
  await db.query(`update visits set status = 'ended' where code = $1 and status = 'started'`, [code])
  log('Ended', code, reason)
}

async function assignWaiting() {
  await db.query(`update visits set status = 'gone' where status = 'waiting' and last_poll < now() - interval '2 minutes'`)
  const waitingList = await db.query(`select * from visits where status = 'waiting' order by id`)
  for (const v of waitingList.rows) {
    const free = await db.query(`select code, key from demos where status = 'ready' order by created_at limit 1`)
    const d = free.rows[0]
    if (!d) return
    const token = rand()
    const expires = new Date(Date.now() + MINUTES * 60_000)
    try {
      const r = await call(d.code, d.key, 'POST', '/api/up/demo/internal/assign', { token, expiresAt: expires.toISOString(), name: v.name || '' })
      if (!r.ok) throw new Error(`assign ${r.status}`)
    } catch (err) {
      log('Assign failed', d.code, err.message)
      await endDemo(d.code, 'assign failed')
      continue
    }
    await db.query(`update demos set status = 'assigned', assigned_at = now(), expires_at = $2, visit_id = $3 where code = $1`, [d.code, expires, v.id])
    await db.query(`update visits set status = 'started', code = $2, login_token = $3 where id = $1`, [v.id, d.code, token])
    log('Assigned', d.code, 'to visit', v.id)
  }
}

async function checkDemos() {
  // Warming demos become ready once they answer.
  for (const d of (await db.query(`select code, created_at from demos where status = 'warming'`)).rows) {
    if (await up(d.code)) {
      await db.query(`update demos set status = 'ready' where code = $1 and status = 'warming'`, [d.code])
      log('Ready', d.code)
    } else if (Date.now() - new Date(d.created_at).getTime() > 8 * 60_000) await endDemo(d.code, 'did not start')
  }
  // Running demos end on time, when the visitor is done, or after being left alone.
  for (const d of (await db.query(`select * from demos where status = 'assigned'`)).rows) {
    if (Date.now() > new Date(d.expires_at).getTime()) {
      await endDemo(d.code, 'time up')
      continue
    }
    let s = null
    try {
      const r = await call(d.code, d.key, 'GET', '/api/up/demo/internal/state', undefined, 10_000)
      if (r.ok) s = await r.json()
    } catch {
      /* counted below */
    }
    if (!s) {
      const m = await db.query('update demos set misses = misses + 1 where code = $1 returning misses', [d.code])
      if (m.rows[0].misses >= 6) await endDemo(d.code, 'stopped responding')
      continue
    }
    const tried = Array.isArray(s.events) ? s.events.filter((e) => /^[a-z]{2,12}$/.test(e)).join(',') : ''
    await db.query('update demos set misses = 0, active_minutes = $2, tried = $3 where code = $1', [d.code, Number(s.activeMinutes) || 0, tried])
    // Idle means no real use (moving, clicking, typing, scrolling), not just an open tab.
    const lastUse = s.lastActive || s.lastSeen
    if (s.done) await endDemo(d.code, 'finished')
    else if (lastUse && Date.now() - lastUse > IDLE * 60_000) await endDemo(d.code, 'idle')
  }
}

async function fillPool() {
  const c = await db.query(`
    select count(*) filter (where status in ('warming', 'ready', 'assigned', 'ending'))::int as alive,
           count(*) filter (where status in ('warming', 'ready'))::int as spare
    from demos`)
  const w = await db.query(`select count(*)::int as n from visits where status = 'waiting'`)
  let { alive, spare } = c.rows[0]
  const want = POOL + w.rows[0].n
  while (spare < want && alive < MAX) {
    await createDemo()
    spare++
    alive++
  }
}

let ticking = false
async function tick() {
  if (ticking) return
  ticking = true
  try {
    await checkDemos()
    await assignWaiting()
    await fillPool()
  } catch (err) {
    log('Tick:', err.message)
  } finally {
    ticking = false
  }
}

/** On start: remove containers and databases nobody knows about, finish anything half done. */
async function reconcile() {
  const known = new Set((await db.query(`select code from demos where status <> 'ended'`)).rows.map((r) => r.code))
  for (const c of await list('up.demo=1')) {
    const code = c.Labels?.['up.code']
    if (!code || !known.has(code)) await remove(c.Names?.[0]?.replace(/^\//, '') || c.Id)
  }
  const running = new Set((await list('up.demo=1')).map((c) => c.Labels?.['up.code']))
  for (const code of known) if (!running.has(code)) await endDemo(code, 'gone after restart')
}

function cleanKept() {
  try {
    for (const f of fs.readdirSync(KEPT)) {
      const p = path.join(KEPT, f)
      if (Date.now() - fs.statSync(p).mtimeMs > 7 * 86_400_000) fs.rmSync(p, { force: true })
    }
  } catch {
    /* nothing kept yet */
  }
}

/* ---------- Omnisend ---------- */

/**
 * Adds or updates the visitor in Omnisend as subscribed (they agreed on the form), tagged
 * ultimapress-trial, plus clicked-hosting and kept-site once they do those.
 */
async function toOmnisend(visitId) {
  if (!OMNISEND_KEY) return
  const v = (await db.query('select * from visits where id = $1', [visitId])).rows[0]
  if (!v) return
  const tags = ['ultimapress-trial', ...(v.hosting_clicks > 0 ? ['clicked-hosting'] : []), ...(v.kept_downloads > 0 ? ['kept-site'] : [])]
  try {
    const r = await fetch('https://api.omnisend.com/v5/contacts', {
      method: 'POST',
      headers: { 'X-API-KEY': OMNISEND_KEY, 'content-type': 'application/json', accept: 'application/json' },
      body: JSON.stringify({
        identifiers: [
          { type: 'email', id: v.email, channels: { email: { status: 'subscribed', statusDate: new Date(v.created_at).toISOString() } } },
        ],
        ...(v.name ? { firstName: v.name } : {}),
        tags,
      }),
      signal: AbortSignal.timeout(15_000),
    })
    if (!r.ok) log('Omnisend', r.status, (await r.text()).slice(0, 300))
  } catch (err) {
    log('Omnisend:', err.message)
  }
}

/* ---------- Web ---------- */

const send = (res, status, body, headers = {}) => {
  res.writeHead(status, { 'content-type': 'text/html; charset=utf-8', 'cache-control': 'no-store', 'x-robots-tag': 'noindex', ...headers })
  res.end(body)
}
const redirect = (res, to, status = 302, headers = {}) => send(res, status, '', { location: to, ...headers })
const clientIp = (req) => String(req.headers['cf-connecting-ip'] || req.socket.remoteAddress || '').slice(0, 64)

const cookies = (req) =>
  Object.fromEntries(
    String(req.headers.cookie || '')
      .split(';')
      .map((p) => p.trim().split('='))
      .filter((p) => p.length === 2)
      .map(([k, v]) => [k, decodeURIComponent(v)]),
  )

async function visitor(req) {
  const m = /^(\d{1,10})\.([a-f0-9]{48})$/.exec(cookies(req).upv || '')
  if (!m) return null
  const r = await db.query('select * from visits where id = $1', [Number(m[1])])
  const v = r.rows[0]
  if (!v || !crypto.timingSafeEqual(Buffer.from(v.browser_key), Buffer.from(m[2]))) return null
  return v
}

const readBody = (req, limit = 8192) =>
  new Promise((resolve, reject) => {
    let size = 0
    const chunks = []
    req.on('data', (c) => {
      size += c.length
      if (size > limit) {
        reject(new Error('too big'))
        req.destroy()
      } else chunks.push(c)
    })
    req.on('end', () => resolve(Buffer.concat(chunks).toString('utf8')))
    req.on('error', reject)
  })

async function turnstileOk(token, ip) {
  if (!TS_SECRET) return false
  try {
    const r = await fetch('https://challenges.cloudflare.com/turnstile/v0/siteverify', {
      method: 'POST',
      body: new URLSearchParams({ secret: TS_SECRET, response: token, remoteip: ip }),
      signal: AbortSignal.timeout(10_000),
    })
    return Boolean((await r.json()).success)
  } catch {
    return false
  }
}

/** How many demos visitors have right now, for the sign-up page. */
async function usage() {
  const r = await db.query(`select count(*)::int as n from demos where status = 'assigned'`)
  return { inUse: Math.min(r.rows[0].n, MAX), max: MAX }
}

/** Where a visitor came from: ?ref= (or utm_source) on the link, else the site that sent them, else direct. */
const cleanSource = (s) => String(s || '').toLowerCase().trim().replace(/\s+/g, '-').replace(/[^a-z0-9._-]/g, '').slice(0, 60)
function sourceOf(req, url) {
  const tagged = cleanSource(url.searchParams.get('ref') || url.searchParams.get('utm_source') || url.searchParams.get('source'))
  if (tagged) return tagged
  try {
    const host = new URL(String(req.headers.referer || '')).hostname.replace(/^www\./, '')
    if (host && host !== DOMAIN && !host.endsWith(`.${DOMAIN}`)) return cleanSource(host)
  } catch {
    /* no referrer */
  }
  return 'direct'
}
const countryOf = (req) => {
  const c = String(req.headers['cf-ipcountry'] || '').toUpperCase()
  return /^[A-Z]{2}$/.test(c) && c !== 'XX' ? c : null
}

const EMAIL = /^[^\s@<>"']{1,100}@[^\s@<>"']{1,100}\.[a-z]{2,24}$/i

async function start(req, res) {
  if (PAUSED) return redirect(res, '/', 303)
  let form
  try {
    form = new URLSearchParams(await readBody(req))
  } catch {
    return send(res, 413, message('Something went wrong', 'Please try again.'))
  }
  const email = String(form.get('email') || '').trim().toLowerCase().slice(0, 200)
  const name = String(form.get('name') || '').trim().replace(/[<>]/g, '').slice(0, 60)
  // Agreed by clicking Try now (the line under the button).
  const marketing = true
  const ip = clientIp(req)
  const source = cleanSource(form.get('src')) || 'direct'
  const again = async (error) => send(res, 400, landing({ siteKey: TS_SITE, error, email, name, source, minutes: MINUTES, ...(await usage()) }))
  // Refused sign-ups are counted by reason, for the stats page.
  const refused = (reason) => db.query('insert into refusals (reason) values ($1)', [reason]).catch(() => undefined)
  if (!EMAIL.test(email)) {
    refused('email')
    return again('Enter a valid email address.')
  }
  if (!(await turnstileOk(String(form.get('cf-turnstile-response') || ''), ip))) {
    refused('check')
    return again('Please tick the check below the email, then press Try now again.')
  }

  // All slots taken: nobody new starts (the button is greyed out too).
  const now = await usage()
  if (now.inUse >= now.max) {
    refused('full')
    return send(res, 503, landing({ siteKey: TS_SITE, email, name, source, minutes: MINUTES, ...now }))
  }

  // Still waiting, or their demo is still running: take them there instead of starting another.
  const current = await visitor(req)
  if (current?.status === 'waiting') return redirect(res, '/wait', 303)
  if (current?.status === 'started' && current.code) {
    const d = (await db.query('select status from demos where code = $1', [current.code])).rows[0]
    if (d?.status === 'assigned') return redirect(res, '/wait', 303)
  }

  const used = `created_at > now() - interval '24 hours' and (code is not null or status = 'waiting')`
  const byEmail = await db.query(`select count(*)::int as n from visits where lower(email) = $1 and ${used}`, [email])
  const byIp = await db.query(`select count(*)::int as n from visits where ip = $1 and ${used}`, [ip])
  if (!UNLIMITED.has(email) && (byEmail.rows[0].n >= 1 || byIp.rows[0].n >= PER_DAY_IP)) {
    refused(byEmail.rows[0].n >= 1 ? 'limit-email' : 'limit-ip')
    return send(
      res,
      429,
      message('You have had your demo today', 'Each person gets one demo a day. Install UltimaPress on your own server to keep going, with no time limit.', { hosting: HOSTING }),
    )
  }
  const key = rand(24)
  const r = await db.query(
    `insert into visits (email, name, marketing, ip, browser_key, country, source) values ($1, $2, $3, $4, $5, $6, $7) returning id`,
    [email, name || null, marketing, ip, key, countryOf(req), source],
  )
  const cookie = `upv=${r.rows[0].id}.${key}; Path=/; Max-Age=${7 * 86400}; HttpOnly; Secure; SameSite=Lax`
  toOmnisend(r.rows[0].id)
  tick()
  return redirect(res, '/wait', 303, { 'set-cookie': cookie })
}

async function visitStatus(req, res) {
  const v = await visitor(req)
  const json = (o) => send(res, 200, JSON.stringify(o), { 'content-type': 'application/json' })
  if (!v) return json({ status: 'none' })
  await db.query('update visits set last_poll = now() where id = $1', [v.id])
  if (v.status === 'waiting') {
    const p = await db.query(`select count(*)::int as n from visits where status = 'waiting' and id <= $1`, [v.id])
    return json({ status: 'waiting', position: p.rows[0].n })
  }
  if (v.status === 'ended' && v.code) return json({ status: 'started', site: `/ended/${v.code}` })
  if (v.status === 'started' && v.code) {
    const d = (await db.query('select status from demos where code = $1', [v.code])).rows[0]
    if (d?.status !== 'assigned') return json({ status: 'started', site: `/ended/${v.code}` })
    if (v.login_token) {
      await db.query('update visits set login_token = null where id = $1', [v.id])
      return json({ status: 'started', url: `https://${v.code}.${DOMAIN}/api/up/demo/login?t=${v.login_token}` })
    }
    return json({ status: 'started', site: `https://${v.code}.${DOMAIN}/admin` })
  }
  return json({ status: v.status })
}

function leadsAllowed(req) {
  if (ADMIN_PASSWORD.length < 12) return false
  const m = /^Basic (.+)$/.exec(String(req.headers.authorization || ''))
  if (!m) return false
  const pass = Buffer.from(m[1], 'base64').toString().split(':').slice(1).join(':')
  const a = crypto.createHash('sha256').update(pass).digest()
  const b = crypto.createHash('sha256').update(ADMIN_PASSWORD).digest()
  return crypto.timingSafeEqual(a, b)
}

async function leads(res) {
  const r = await db.query(`
    select v.created_at, v.email, v.name, v.marketing, v.status, v.code, v.country, v.source, v.hosting_clicks, v.kept_downloads, d.end_reason, d.active_minutes, d.tried
    from visits v left join demos d on d.code = v.code order by v.id desc`)
  const cell = (x) => {
    const s = x instanceof Date ? x.toISOString() : String(x ?? '')
    return /[",\n]|^[=+\-@]/.test(s) ? `"${s.replace(/^([=+\-@])/, "'$1").replace(/"/g, '""')}"` : s
  }
  const head = 'date,email,name,wants_emails,status,demo,country,source,hosting_clicks,site_downloads,ended,active_minutes,tried'
  const rows = r.rows.map((x) =>
    [x.created_at, x.email, x.name, x.marketing ? 'yes' : 'no', x.status, x.code, x.country, x.source, x.hosting_clicks, x.kept_downloads, x.end_reason, x.active_minutes ?? '', x.tried || ''].map(cell).join(','),
  )
  send(res, 200, [head, ...rows].join('\n'), {
    'content-type': 'text/csv; charset=utf-8',
    'content-disposition': `attachment; filename="ultimapress-trial-leads-${new Date().toISOString().slice(0, 10)}.csv"`,
  })
}

/**
 * Visits to the sign-up page, counted without cookies: each visitor is a hash of their address and
 * browser with a salt that changes every day, so they are counted once a day and cannot be traced back.
 */
const BOTS = /bot|crawl|spider|slurp|preview|monitor|uptime|curl|wget|python|headless|lighthouse/i
let salt = { day: '', value: '' }
// Counted only when the page's own script reports a real browser that kept the tab open for 3 seconds
// (bots rarely run scripts), and never for the owner: opening /stats marks that browser as "me".
const ME = /(?:^|;\s*)up_me=1(?:;|$)/
/** One click on a Hostinger link, by the page it came from (people counted once a day, no cookies). */
const PLACE = /^[a-z0-9-]{1,40}$/
function recordClick(req, place) {
  const ua = String(req.headers['user-agent'] || '')
  if (!ua || BOTS.test(ua) || ME.test(String(req.headers.cookie || ''))) return
  const day = new Date().toISOString().slice(0, 10)
  if (salt.day !== day) salt = { day, value: rand(16) }
  const visitor = crypto.createHash('sha256').update(`${salt.value}|${clientIp(req)}|${ua}`).digest('hex').slice(0, 24)
  db.query('insert into link_clicks (place, visitor) values ($1, $2)', [place, visitor]).catch(() => undefined)
}

function recordView(req, source) {
  const ua = String(req.headers['user-agent'] || '')
  if (!ua || BOTS.test(ua) || ME.test(String(req.headers.cookie || ''))) return
  const day = new Date().toISOString().slice(0, 10)
  if (salt.day !== day) salt = { day, value: rand(16) }
  const visitor = crypto.createHash('sha256').update(`${salt.value}|${clientIp(req)}|${ua}`).digest('hex').slice(0, 24)
  db.query('insert into page_views (visitor, country, source) values ($1, $2, $3)', [visitor, countryOf(req), cleanSource(source) || 'direct']).catch(
    () => undefined,
  )
}

async function statsPage(res) {
  const q = async (sql) => (await db.query(sql)).rows
  const started = `code is not null`
  const [now] = await q(`select
      (select count(*)::int from demos where status = 'assigned') as assigned,
      (select count(*)::int from demos where status in ('warming', 'ready')) as spare,
      (select count(*)::int from visits where status = 'waiting') as waiting`)
  const [totals] = await q(`select
      count(*) filter (where ${started} and created_at >= date_trunc('day', now()))::int as today,
      count(*) filter (where ${started} and created_at > now() - interval '7 days')::int as week,
      count(*) filter (where ${started} and created_at > now() - interval '30 days')::int as month,
      count(*) filter (where ${started})::int as all,
      count(*)::int as signups,
      count(*) filter (where ${started} and hosting_clicks > 0)::int as clicked,
      count(*) filter (where ${started} and kept_downloads > 0)::int as kept
    from visits`)
  const [views] = await q(`select
      count(distinct visitor) filter (where day = current_date)::int as today,
      (select count(*)::int from (select distinct day, visitor from page_views where day > current_date - 7) x) as week,
      (select count(*)::int from (select distinct day, visitor from page_views where day > current_date - 30) x) as month,
      count(*) filter (where day = current_date)::int as views_today
    from page_views`)
  const days = await q(`select to_char(d, 'Dy DD Mon') as day,
      (select count(distinct visitor)::int from page_views p where p.day = d::date) as visitors,
      count(v.id)::int as demos,
      count(v.id) filter (where v.hosting_clicks > 0)::int as clicked,
      count(v.id) filter (where v.kept_downloads > 0)::int as kept
    from generate_series(date_trunc('day', now()) - interval '13 days', date_trunc('day', now()), interval '1 day') d
    left join visits v on v.code is not null and v.created_at >= d and v.created_at < d + interval '1 day'
    group by d order by d desc`)
  const by = (col) =>
    q(`with v as (select coalesce(${col}, '') as k, count(*)::int as demos, count(*) filter (where hosting_clicks > 0)::int as clicked
         from visits where ${started} and created_at > now() - interval '30 days' group by 1),
       p as (select coalesce(${col}, '') as k, count(*)::int as visitors
         from (select distinct day, visitor, ${col} from page_views where day > current_date - 30) x group by 1)
       select nullif(coalesce(v.k, p.k), '') as ${col}, coalesce(p.visitors, 0) as visitors, coalesce(v.demos, 0) as demos, coalesce(v.clicked, 0) as clicked
       from v full join p on p.k = v.k order by visitors desc, demos desc limit 20`)
  const [use] = await q(`select count(*)::int as n,
      coalesce(round(avg(active_minutes)), 0)::int as avg,
      coalesce(percentile_cont(0.5) within group (order by active_minutes), 0)::int as median,
      count(*) filter (where active_minutes < 5)::int as b1,
      count(*) filter (where active_minutes >= 5 and active_minutes < 15)::int as b2,
      count(*) filter (where active_minutes >= 15 and active_minutes < 30)::int as b3,
      count(*) filter (where active_minutes >= 30 and active_minutes < 60)::int as b4,
      count(*) filter (where active_minutes >= 60)::int as b5,
      count(*) filter (where tried like '%builder%')::int as builder,
      count(*) filter (where tried like '%published%')::int as published,
      count(*) filter (where tried like '%post%')::int as post,
      count(*) filter (where tried like '%ai%')::int as ai,
      count(*) filter (where tried like '%kept%')::int as kept
    from demos where assigned_at is not null and created_at > now() - interval '30 days'`)
  const refusals = await q(`select reason,
      count(*) filter (where at >= date_trunc('day', now()))::int as today,
      count(*) filter (where at > now() - interval '30 days')::int as month
    from refusals group by reason order by month desc`)
  const endings = await q(`select coalesce(end_reason, 'still running') as reason, count(*)::int as n from demos
       where assigned_at is not null and created_at > now() - interval '30 days' group by 1 order by n desc`)
  const clicks = await q(`select place,
      count(distinct (day, visitor)) filter (where day = current_date)::int as today,
      count(distinct (day, visitor)) filter (where day > current_date - 7)::int as week,
      count(distinct (day, visitor)) filter (where day > current_date - 30)::int as month
    from link_clicks where day > current_date - 30 group by place order by month desc`)
  // Of the people who clicked Deploy in 1 Click, how many then clicked through to Hostinger that day.
  const [deploy] = await q(`with d as (select distinct day, visitor from link_clicks where place like 'deploy-%' and day > current_date - 30),
      h as (select distinct day, visitor from link_clicks where place = 'hostinger-page' and day > current_date - 30)
    select (select count(*)::int from d) as deploy, (select count(*)::int from d join h using (day, visitor)) as went_on`)
  // Viewed a page on ultimapress.com, then clicked its Hostinger button (same person, same day).
  const funnels = await q(`select f.page, f.label,
      (select count(*)::int from (select distinct day, visitor from link_clicks where place = f.view and day > current_date - 30) v) as viewed,
      (select count(*)::int from (select distinct day, visitor from link_clicks where place = f.view and day > current_date - 30) v
         join (select distinct day, visitor from link_clicks where place = f.click and day > current_date - 30) c using (day, visitor)) as clicked
    from (values ('docs', 'Docs', 'view-docs', 'docs-page'), ('hostinger', 'Hostinger page', 'view-hostinger', 'hostinger-page')) f(page, label, view, click)`)
  return send(res, 200, stats({ clicks, deploy, funnels, now, totals, views, use, refusals, days, countries: await by('country'), sources: await by('source'), endings, max: MAX }))
}

async function home(req, res, url) {
  const p = url.pathname
  if (req.method === 'GET' && p === '/') {
    return send(res, 200, landing({ siteKey: TS_SITE, minutes: MINUTES, source: sourceOf(req, url), paused: PAUSED, ...(await usage()) }))
  }
  if (req.method === 'POST' && p === '/start') return start(req, res)
  if (req.method === 'GET' && p === '/wait') return (await visitor(req)) ? send(res, 200, waiting()) : redirect(res, '/')
  if (req.method === 'GET' && p === '/api/visit') return visitStatus(req, res)
  if (req.method === 'GET' && p === '/robots.txt') return send(res, 200, 'User-agent: *\nDisallow: /\n', { 'content-type': 'text/plain' })
  const asset = /^\/(?:img\/)?(logo\.png|icon\.png|shot-(?:site|builder|admin)\.jpg)$/.exec(p)
  if (req.method === 'GET' && asset) {
    res.writeHead(200, { 'content-type': asset[1].endsWith('.png') ? 'image/png' : 'image/jpeg', 'cache-control': 'public, max-age=86400' })
    return fs.createReadStream(new URL(`./public/${asset[1]}`, import.meta.url)).pipe(res)
  }
  if (req.method === 'GET' && p === '/health') return send(res, 200, 'ok', { 'content-type': 'text/plain' })
  if (req.method === 'GET' && p === '/go') {
    const c = url.searchParams.get('c') || ''
    const from = String(url.searchParams.get('from') || '').toLowerCase()
    recordClick(req, PLACE.test(from) ? from : CODE.test(c) ? 'trial-demo' : 'trial-page')
    // "Deploy in 1 Click" on ultimapress.com: counted here, then on to the Hostinger page there.
    if (url.searchParams.get('to') === 'hostinger-page') return redirect(res, 'https://ultimapress.com/hostinger')
    if (CODE.test(c)) {
      const u = await db.query('update visits set hosting_clicks = hosting_clicks + 1 where code = $1 returning id, hosting_clicks', [c])
      if (u.rows[0]?.hosting_clicks === 1) toOmnisend(u.rows[0].id)
    }
    return redirect(res, HOSTING)
  }
  const endedMatch = /^\/(ended|kept)\/([a-z0-9]{6})$/.exec(p)
  if (req.method === 'GET' && endedMatch) {
    const [, kind, code] = endedMatch
    const v = await visitor(req)
    const file = path.join(KEPT, `${code}.tar`)
    const mine = v?.code === code && fs.existsSync(file)
    if (kind === 'ended') return send(res, 200, ended({ code, canDownload: mine, hosting: `/go?c=${code}`, minutes: MINUTES }))
    if (!mine) return redirect(res, `/ended/${code}`)
    const k = await db.query('update visits set kept_downloads = kept_downloads + 1 where id = $1 returning kept_downloads', [v.id])
    if (k.rows[0].kept_downloads === 1) toOmnisend(v.id)
    res.writeHead(200, {
      'content-type': 'application/x-tar',
      'content-length': fs.statSync(file).size,
      'content-disposition': `attachment; filename="my-ultimapress-site.tar"`,
      'cache-control': 'no-store',
    })
    return fs.createReadStream(file).pipe(res)
  }
  // Totals only (no names or emails), so no password; the leads list keeps one.
  if (req.method === 'GET' && p === '/stats') {
    res.setHeader('set-cookie', 'up_me=1; Path=/; Max-Age=31536000; HttpOnly; Secure; SameSite=None')
    return statsPage(res)
  }
  // Views of ultimapress.com pages, sent by a small script there after 3 seconds on the page.
  if (req.method === 'POST' && p === '/api/pv') {
    const page = (await readBody(req, 64).catch(() => '')).trim()
    if (page === 'docs' || page === 'hostinger') recordClick(req, `view-${page}`)
    return send(res, 204, '')
  }
  if (req.method === 'POST' && p === '/api/seen') {
    const body = await readBody(req, 512).catch(() => '')
    if (req.headers['x-up-seen'] === '1') recordView(req, body)
    return send(res, 204, '')
  }
  if (req.method === 'GET' && p === '/leads.csv') {
    if (!leadsAllowed(req)) return send(res, 401, 'Log in', { 'www-authenticate': 'Basic realm="UltimaPress trial"' })
    return leads(res)
  }
  return send(res, 404, message('Page not found', 'This page does not exist.'))
}

/** Passes a request through to a visitor's demo. */
function proxy(req, res, code) {
  const headers = { ...req.headers }
  delete headers['x-demo-key']
  headers['x-forwarded-for'] = clientIp(req)
  headers['x-forwarded-proto'] = 'https'
  headers['x-forwarded-host'] = req.headers.host
  const out = http.request({ host: container(code), port: 3000, method: req.method, path: req.url, headers, timeout: 300_000 }, (r) => {
    res.writeHead(r.statusCode || 502, { ...r.headers, 'x-robots-tag': 'noindex, nofollow' })
    r.pipe(res)
  })
  out.on('timeout', () => out.destroy(new Error('timeout')))
  out.on('error', () => {
    if (!res.headersSent) send(res, 502, message('One moment', 'Your demo is busy. Refresh the page in a few seconds.'))
    else res.destroy()
  })
  req.pipe(out)
}

const server = http.createServer(async (req, res) => {
  try {
    const host = String(req.headers.host || '').toLowerCase().split(':')[0]
    const url = new URL(req.url || '/', `https://${DOMAIN}`)
    if (host === DOMAIN) return await home(req, res, url)
    if (host === `www.${DOMAIN}`) return redirect(res, `https://${DOMAIN}${url.pathname}`, 301)
    const m = /^([a-z0-9]{6})\./.exec(host)
    if (m && host === `${m[1]}.${DOMAIN}`) {
      const d = (await db.query('select status from demos where code = $1', [m[1]])).rows[0]
      if (d?.status === 'assigned') return proxy(req, res, m[1])
      return redirect(res, `https://${DOMAIN}/ended/${m[1]}`)
    }
    return send(res, 404, message('Page not found', 'This page does not exist.'))
  } catch (err) {
    log('Request failed:', err.message)
    if (!res.headersSent) send(res, 500, message('Something went wrong', 'Please try again in a minute.'))
  }
})
server.headersTimeout = 30_000
server.requestTimeout = 0

async function main() {
  for (let i = 0; ; i++) {
    try {
      await setup()
      break
    } catch (err) {
      if (i > 30) throw err
      log('Waiting for the database…', err.message)
      await new Promise((r) => setTimeout(r, 2000))
    }
  }
  fs.mkdirSync(KEPT, { recursive: true })
  if (!TS_SECRET || !TS_SITE) log('TURNSTILE_SITE_KEY and TURNSTILE_SECRET_KEY are not set: nobody can start a demo.')
  await reconcile()
  server.listen(Number(env('PORT', '8080')), () => log(`Listening for ${DOMAIN}`))
  await ensureTemplate()
  setInterval(tick, 4000)
  setInterval(ensureTemplate, 6 * 3_600_000)
  setInterval(cleanKept, 3_600_000)
  tick()
}

main().catch((err) => {
  log('Launcher stopped:', err.message)
  process.exit(1)
})

