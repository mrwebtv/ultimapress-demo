import http from 'http'

/** The Docker Engine API over the mounted socket (no Docker CLI needed). */
const SOCKET = process.env.DOCKER_SOCKET || '/var/run/docker.sock'

export function docker(method, path, body, { timeout = 120_000 } = {}) {
  return new Promise((resolve, reject) => {
    const data = body === undefined ? undefined : JSON.stringify(body)
    const req = http.request(
      {
        socketPath: SOCKET,
        method,
        path: `/v1.43${path}`,
        headers: data ? { 'Content-Type': 'application/json', 'Content-Length': Buffer.byteLength(data) } : {},
        timeout,
      },
      (res) => {
        let text = ''
        res.on('data', (d) => (text += d))
        res.on('end', () => {
          let json = null
          try {
            json = text ? JSON.parse(text) : null
          } catch {
            json = text
          }
          resolve({ status: res.statusCode, json })
        })
      },
    )
    req.on('timeout', () => req.destroy(new Error(`Docker ${method} ${path} timed out`)))
    req.on('error', reject)
    if (data) req.write(data)
    req.end()
  })
}

/** Pulls an image (waits until done) and returns its id, or null. */
export async function pull(image) {
  const [repo, tag = 'latest'] = image.split(/:(?=[^/]+$)/)
  const r = await docker('POST', `/images/create?fromImage=${encodeURIComponent(repo)}&tag=${encodeURIComponent(tag)}`, undefined, {
    timeout: 20 * 60_000,
  })
  if (r.status !== 200) throw new Error(`Could not pull ${image}: ${JSON.stringify(r.json).slice(0, 300)}`)
  return imageId(image)
}

export async function imageId(image) {
  const r = await docker('GET', `/images/${encodeURIComponent(image)}/json`)
  return r.status === 200 ? r.json.Id : null
}

export async function run(name, spec) {
  const c = await docker('POST', `/containers/create?name=${encodeURIComponent(name)}`, spec)
  if (c.status !== 201) throw new Error(`Could not create ${name}: ${JSON.stringify(c.json).slice(0, 300)}`)
  const s = await docker('POST', `/containers/${c.json.Id}/start`)
  if (s.status !== 204 && s.status !== 304) throw new Error(`Could not start ${name}: ${JSON.stringify(s.json).slice(0, 300)}`)
  return c.json.Id
}

export async function remove(name) {
  await docker('DELETE', `/containers/${encodeURIComponent(name)}?force=true&v=true`).catch(() => undefined)
}

/** Containers with a label, e.g. up.demo=1. */
export async function list(label) {
  const filters = encodeURIComponent(JSON.stringify({ label: [label] }))
  const r = await docker('GET', `/containers/json?all=true&filters=${filters}`)
  return r.status === 200 ? r.json : []
}
