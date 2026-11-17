import crypto from 'crypto'
import fs from 'fs'
import path from 'path'
import type { PayloadRequest } from 'payload'

/**
 * Demo mode (tryultimapress.com). Each visitor's demo is its own container; the launcher
 * sets it up through the internal endpoints (x-demo-key) and this file keeps its state.
 */

export type DemoState = {
  /** A visitor has this demo. */
  assigned?: boolean
  name?: string
  expiresAt?: string
  /** sha256 of the one-time login link token. */
  tokenHash?: string
  tokenUsed?: boolean
  /** Last time the visitor had the demo open (ms). */
  lastSeen?: number
  /** Last time they actually used it: moved, clicked, typed or scrolled (ms). */
  lastActive?: number
  /** Minutes of real use. */
  activeMinutes?: number
  lastCounted?: number
  /** What they tried: builder, published, post, ai, kept. */
  events?: string[]
  done?: boolean
  seeded?: boolean
}

export const DEMO_EMAIL = process.env.DEMO_EMAIL || 'demo@tryultimapress.com'
/** The launcher's own address, e.g. https://tryultimapress.com */
export const DEMO_HOME = (process.env.DEMO_HOME || 'https://tryultimapress.com').replace(/\/$/, '')
/** This demo's code (its subdomain). */
export const DEMO_CODE = process.env.DEMO_CODE || ''

const file = () =>
  path.join(process.env.UP_DATA_DIR || (fs.existsSync('/app/data') ? '/app/data' : path.join(process.cwd(), 'data')), 'demo.json')

export function readState(): DemoState {
  try {
    return JSON.parse(fs.readFileSync(file(), 'utf8')) as DemoState
  } catch {
    return {}
  }
}

export function writeState(change: Partial<DemoState>): DemoState {
  const next = { ...readState(), ...change }
  fs.mkdirSync(path.dirname(file()), { recursive: true })
  fs.writeFileSync(`${file()}.tmp`, JSON.stringify(next))
  fs.renameSync(`${file()}.tmp`, file())
  return next
}

export const sha = (s: string) => crypto.createHash('sha256').update(s).digest()

/** True when the request comes from the launcher (it alone knows this demo's key). */
export function fromLauncher(req: PayloadRequest): boolean {
  const key = process.env.DEMO_KEY || ''
  const given = req.headers.get('x-demo-key') || ''
  if (key.length < 32 || !given) return false
  return crypto.timingSafeEqual(sha(key), sha(given))
}

/** Notes that the visitor tried something (shown on the trial stats page). */
export function addEvent(name: string) {
  const s = readState()
  if (!s.assigned || s.events?.includes(name)) return
  writeState({ events: [...(s.events || []), name] })
}
