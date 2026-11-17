'use client'

import { useEffect } from 'react'

/**
 * Tells the demo server once a minute whether the visitor is really using the demo: the tab is in
 * front AND they moved, clicked, typed or scrolled in the last minute (also inside the visual
 * builder's page frame). A tab left open doing nothing stops counting.
 */
export function useDemoActivity(enabled = true) {
  useEffect(() => {
    if (!enabled) return
    let last = Date.now()
    const mark = () => {
      last = Date.now()
    }
    const events = ['pointerdown', 'pointermove', 'keydown', 'wheel', 'scroll', 'touchstart', 'input']
    const opts = { passive: true, capture: true } as AddEventListenerOptions
    const watched = new WeakSet<Window>()
    const attach = (win: Window | null) => {
      try {
        if (!win || watched.has(win)) return
        watched.add(win)
        events.forEach((e) => win.addEventListener(e, mark, opts))
      } catch {
        /* another site's frame */
      }
    }
    attach(window)
    const frames = setInterval(() => document.querySelectorAll('iframe').forEach((f) => attach(f.contentWindow)), 2000)
    const beat = setInterval(() => {
      if (document.visibilityState !== 'visible') return
      fetch('/api/up/demo/ping', {
        method: 'POST',
        credentials: 'include',
        headers: { 'content-type': 'application/json' },
        body: JSON.stringify({ active: Date.now() - last < 60_000, builder: location.pathname.startsWith('/admin/visual-builder') }),
      }).catch(() => undefined)
    }, 60_000)
    return () => {
      clearInterval(frames)
      clearInterval(beat)
    }
  }, [enabled])
}
