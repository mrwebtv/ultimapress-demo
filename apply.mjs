#!/usr/bin/env node
/**
 * Turns a copy of the official UltimaPress code into the demo: copies overlay/ over it and makes
 * a few small, checked edits. Stops with an error if the core has changed so an edit no longer
 * fits, so a broken demo image is never built.
 *
 *   node apply.mjs <path to the UltimaPress code>
 */
import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'

const here = path.dirname(fileURLToPath(import.meta.url))
const core = path.resolve(process.argv[2] || 'core')
if (!fs.existsSync(path.join(core, 'src/payload.config.ts'))) {
  console.error(`No UltimaPress code in ${core}`)
  process.exit(1)
}

// 1. Overlay files.
const copy = (from, to) => {
  for (const name of fs.readdirSync(from)) {
    const a = path.join(from, name)
    const b = path.join(to, name)
    if (fs.statSync(a).isDirectory()) {
      fs.mkdirSync(b, { recursive: true })
      copy(a, b)
    } else fs.copyFileSync(a, b)
  }
}
copy(path.join(here, 'overlay'), core)

// 2. Small edits.
const edit = (file, change) => {
  const f = path.join(core, file)
  const before = fs.readFileSync(f, 'utf8')
  const after = change(before)
  if (after === before) {
    console.error(`apply.mjs: ${file} has changed in UltimaPress, update this edit.`)
    process.exit(1)
  }
  fs.writeFileSync(f, after)
  console.log(`edited ${file}`)
}
const once = (s, find, replace) => (s.split(find).length === 2 ? s.replace(find, replace) : s)

// Demo mode plugin.
edit('src/plugins/index.ts', (s) =>
  s.includes('demoPlugin') ? s : `${s}\nimport { demoPlugin } from '@/demo/plugin'\nplugins.push(demoPlugin)\n`,
)

// The countdown banner in the admin.
edit('src/app/(payload)/admin/importMap.js', (s) =>
  s.includes('@/demo/Banner#DemoBanner')
    ? s
    : once(
        `import { DemoBanner as DemoBanner_up } from '@/demo/Banner'\nimport { DemoActivity as DemoActivity_up } from '@/demo/Activity'\n${s}`,
        'export const importMap = {',
        `export const importMap = {\n  "@/demo/Banner#DemoBanner": DemoBanner_up,\n  "@/demo/Activity#DemoActivity": DemoActivity_up,`,
      ),
)

// The countdown banner on the site.
edit('src/app/(frontend)/layout.tsx', (s) =>
  s.includes('<DemoBanner />')
    ? s
    : once(`import { DemoBanner } from '@/demo/Banner'\n${s}`, '<body>', '<body>\n        <DemoBanner />'),
)

// No Security or Site health in the admin menu.
edit('src/components/admin/Spine/index.tsx', (s) =>
  s
    .replace("        { key: 'health', label: 'Site health', href: `${admin}/site-health`, meta: 'What needs fixing' },\n", '')
    .replace("        { key: 'security', label: 'Security', href: `${admin}/security`, meta: 'Code and package check' },\n", ''),
)

// Classic sidebar menu by default.
edit('src/collections/Users/index.ts', (s) =>
  once(s, "name: 'menuStyle',\n      label: 'Menu style',\n      type: 'select',\n      defaultValue: 'spine',", "name: 'menuStyle',\n      label: 'Menu style',\n      type: 'select',\n      defaultValue: 'sidebar',"),
)

console.log('Demo applied.')
