'use client'

import React from 'react'

import { useDemoActivity } from './activity'

/** Wraps the whole admin (the visual builder included) so real use is counted everywhere. */
export function DemoActivity({ children }: { children?: React.ReactNode }) {
  useDemoActivity()
  return <>{children}</>
}

export default DemoActivity
