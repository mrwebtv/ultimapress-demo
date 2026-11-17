import crypto from 'crypto'
import type { Payload } from 'payload'

import { DEMO_EMAIL, writeState } from './state'

/**
 * The starting point every demo copies. The site itself (Linden & Vale, built in the UltimaPress
 * video) is loaded from demo/site.sql before this runs, with its images in media/; this adds the demo login.
 */
export async function seedDemo(payload: Payload) {
  const existing = await payload.find({ collection: 'users', where: { email: { equals: DEMO_EMAIL } }, limit: 1, overrideAccess: true })
  if (!existing.docs.length) {
    await payload.create({
      collection: 'users',
      overrideAccess: true,
      context: { demo: true },
      data: {
        email: DEMO_EMAIL,
        name: 'Demo',
        role: 'admin',
        menuStyle: 'sidebar',
        password: crypto.randomBytes(24).toString('hex'),
      } as never,
    })
  }

  writeState({ seeded: true })
}
