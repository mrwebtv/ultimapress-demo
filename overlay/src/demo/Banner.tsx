'use client'

import React, { useEffect, useState } from 'react'

import { useDemoActivity } from './activity'

type Info = { assigned: boolean; expiresAt: string | null; code: string; home: string }

const pad = (n: number) => String(n).padStart(2, '0')
const clock = (ms: number) => {
  const s = Math.max(0, Math.floor(ms / 1000))
  return `${Math.floor(s / 3600)}:${pad(Math.floor((s % 3600) / 60))}:${pad(s % 60)}`
}

const css = `
.up-demo{position:sticky;top:0;z-index:2147483000;display:flex;align-items:center;gap:14px;flex-wrap:wrap;
  padding:8px 16px;min-height:44px;box-sizing:border-box;background:#120c2b;color:#fff;
  font:500 14px/1.3 system-ui,-apple-system,"Segoe UI",sans-serif;border-bottom:1px solid #2c2160}
.up-demo--soon{background:#6b1d3a;border-color:#a3305c}
.up-demo__time{font-variant-numeric:tabular-nums;font-weight:700;white-space:nowrap}
.up-demo__msg{flex:1;min-width:0;color:#ddd6ff}
.up-demo--soon .up-demo__msg{color:#fff}
.up-demo__acts{display:flex;gap:8px;flex-wrap:wrap}
.up-demo a.up-demo__btn,.up-demo button.up-demo__btn{display:inline-flex;align-items:center;height:30px;padding:0 12px;border-radius:8px;
  border:1px solid rgba(255,255,255,.35);background:transparent;color:#fff;font:inherit;font-size:13px;text-decoration:none;cursor:pointer;white-space:nowrap}
.up-demo a.up-demo__btn--main{background:linear-gradient(90deg,#5b2bff,#e2369b);border-color:transparent;font-weight:700}
.up-demo__btn:focus-visible{outline:2px solid #fff;outline-offset:2px}
@media (max-width:760px){.up-demo__msg{display:none}}
.up-demo-end{position:fixed;inset:0;z-index:2147483001;display:grid;place-items:center;padding:24px;background:rgba(10,6,28,.94);color:#fff;
  font:16px/1.5 system-ui,-apple-system,"Segoe UI",sans-serif;text-align:center}
.up-demo-end h2{font-size:30px;margin:0 0 10px}
.up-demo-end p{margin:0 0 22px;color:#ddd6ff;max-width:520px}
.up-demo-end .up-demo__acts{justify-content:center}
.up-demo-end a.up-demo__btn{height:42px;padding:0 18px;font-size:15px;border-radius:10px;display:inline-flex;align-items:center;color:#fff;
  border:1px solid rgba(255,255,255,.35);text-decoration:none}
.up-demo-end a.up-demo__btn--main{background:linear-gradient(90deg,#5b2bff,#e2369b);border-color:transparent;font-weight:700}
`

/** The demo's countdown bar, at the top of the admin and the site. */
export function DemoBanner() {
  const [info, setInfo] = useState<Info | null>(null)
  const [now, setNow] = useState(() => Date.now())
  const [confirmEnd, setConfirmEnd] = useState(false)

  useEffect(() => {
    fetch('/api/up/demo', { credentials: 'include' })
      .then((r) => (r.ok ? r.json() : null))
      .then((d: Info | null) => d && setInfo(d))
      .catch(() => undefined)
    const tick = setInterval(() => setNow(Date.now()), 1000)
    return () => clearInterval(tick)
  }, [])
  // On the site (the admin has its own tracker, see Activity.tsx).
  useDemoActivity(typeof window !== 'undefined' && !window.location.pathname.startsWith('/admin'))

  if (!info?.assigned || !info.expiresAt) return null
  const left = Date.parse(info.expiresAt) - now
  const hosting = `${info.home}/go?c=${encodeURIComponent(info.code)}`
  const soon = left <= 15 * 60_000

  const end = async () => {
    const r = await fetch('/api/up/demo/done', { method: 'POST', credentials: 'include' })
    const d = await r.json().catch(() => ({}))
    window.location.href = d.next || info.home
  }

  if (left <= 0) {
    return (
      <>
        <style>{css}</style>
        <div className="up-demo-end" role="dialog" aria-modal="true" aria-labelledby="up-demo-end-title">
          <div>
            <h2 id="up-demo-end-title">Your demo has ended</h2>
            <p>Your site is saved for 7 days. Download it, install UltimaPress on your own server and put it back in a few clicks.</p>
            <div className="up-demo__acts">
              <a className="up-demo__btn up-demo__btn--main" href={hosting}>
                Get your VPS
              </a>
              <a className="up-demo__btn" href={`${info.home}/ended/${encodeURIComponent(info.code)}`}>
                Download my site
              </a>
            </div>
          </div>
        </div>
      </>
    )
  }

  return (
    <>
      <style>{css}</style>
      <div className={`up-demo${soon ? ' up-demo--soon' : ''}`} role="region" aria-label="Demo">
        <span className="up-demo__time">⏱ {clock(left)} left</span>
        <span className="up-demo__msg">
          {soon
            ? 'Your demo will be deleted soon. Download your site to keep it.'
            : "Like what you've built? Run UltimaPress on your own server, with an extra 10% off Hostinger through my link."}
        </span>
        <span className="up-demo__acts">
          <a className="up-demo__btn up-demo__btn--main" href={hosting}>
            Get your VPS
          </a>
          <a className="up-demo__btn" href="/api/up/demo/keep" title="Download your site to put it back on your own server">
            Keep this site
          </a>
          {confirmEnd ? (
            <>
              <button type="button" className="up-demo__btn" onClick={end}>
                Yes, end it
              </button>
              <button type="button" className="up-demo__btn" onClick={() => setConfirmEnd(false)}>
                Cancel
              </button>
            </>
          ) : (
            <button type="button" className="up-demo__btn" onClick={() => setConfirmEnd(true)}>
              I&apos;m done
            </button>
          )}
        </span>
      </div>
    </>
  )
}

export default DemoBanner
