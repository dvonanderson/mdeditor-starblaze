# Developer setup

Commands below run from the **monorepo root** unless noted. Node **20.x** or **22.x** and **pnpm** are required.

## pnpm filters

| Package | Filter name | Path |
| -------- | ----------- | ----- |
| MdEditor app | `mdeditor` | `ui/mdeditor` |
| Core addon | `core` | `addons/core` |
| Md UI addon | `md` | `addons/md` |
| Handbook (workspace marker) | `mdeditor-handbook` | `docs/handbook` |

## Build, lint, and test (whole repo)

| Goal | Command |
| ---- | ------- |
| Build MdEditor UI | `pnpm build` or `pnpm build:ui:mdeditor` |
| Lint all packages | `pnpm lint` |
| Test all packages | `pnpm test` |
| Accessibility (mdeditor) | `pnpm test-a11y` |

### One package only

```bash
pnpm run --filter mdeditor lint
pnpm run --filter core test
pnpm run --filter md start
```

## Md addon: new component

```bash
cd addons/md
pnpm exec ember g component md/your-name
```

Prefer **`.gjs`** for new components. Class-derived templates use a **`<template>`** block **inside** the class body so the build emits a single default export (see `sidebar-nav-section` in the repo).

## Handbook (this docs site)

| Goal | Command |
| ---- | ------- |
| Local dev server | `pnpm docs:dev` |
| Production build | `pnpm docs:build` |
| Preview build | `pnpm docs:preview` |

## Non-developer docs

Product-oriented pages, including **Md UI** layout and **component reference**, live under [Md UI addon](../addons/md/) and [Components](../addons/md/components/).
