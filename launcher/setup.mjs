/**
 * Writes the trial server's files into /out (mount /opt/trial there):
 *   docker run --rm -v /opt/trial:/out ghcr.io/mrwebtv/ultimapress-demo-launcher node setup.mjs
 * docker-compose.yml and Caddyfile are always refreshed. .env is created once, with random
 * passwords, and never overwritten.
 */
import crypto from 'crypto'
import fs from 'fs'
import path from 'path'

const out = '/out'
for (const f of ['docker-compose.yml', 'Caddyfile']) fs.copyFileSync(path.join('/app/server', f), path.join(out, f))
fs.mkdirSync(path.join(out, 'certs'), { recursive: true })
const env = path.join(out, '.env')
if (!fs.existsSync(env)) {
  const text = fs
    .readFileSync('/app/server/.env.example', 'utf8')
    .replace(/^POSTGRES_PASSWORD=$/m, `POSTGRES_PASSWORD=${crypto.randomBytes(24).toString('hex')}`)
    .replace(/^ADMIN_PASSWORD=$/m, `ADMIN_PASSWORD=${crypto.randomBytes(12).toString('hex')}`)
  fs.writeFileSync(env, text, { mode: 0o600 })
  console.log('Created .env with new passwords.')
} else console.log('.env already there, left as it is.')
console.log('Wrote docker-compose.yml and Caddyfile.')
