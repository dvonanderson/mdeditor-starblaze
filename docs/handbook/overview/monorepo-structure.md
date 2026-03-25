# Monorepo structure

This repository is a **pnpm workspace** for MdEditor: one checkout, several packages, shared tooling at the root.

## Packages (pnpm `--filter` names)

| Package | Path | Role |
| -------- | ----- | ---- |
| **mdeditor** | `ui/mdeditor` | Main Ember **application**: routes, pages, and how product screens are composed. |
| **core** | `addons/core` | **Reusable logic** addon: services, helpers, and primitives that are not focused on visual UI. |
| **md** | `addons/md` | **Shared UI** addon: layout shell, navigation chrome, styles, design tokens. |
| **mdeditor-handbook** | `docs/handbook` | This **documentation** site (VitePress → static HTML). |

Other Ember apps or addons can be added under `ui/*` or `addons/*` and registered in `pnpm-workspace.yaml`.

## How the pieces fit together

```text
┌─────────────────────────────────────────────────────────┐
│  mdeditor (app)                                         │
│  routes, controllers, templates, app-specific UI        │
└───────────────┬─────────────────────────────────────────┘
                │ depends on
        ┌───────┴───────┐
        ▼               ▼
┌──────────────┐  ┌──────────────┐
│  md (UI)     │  │  core        │
│  shell, nav  │  │  i18n, etc.  │
│  styles      │  │              │
└──────────────┘  └──────────────┘
```

- **Business flows and screens** usually start in **mdeditor**.
- **Look-and-feel and shared chrome** come from **md**.
- **Shared non-UI behavior** tends to live in **core**.

## Root-level scripts

From the repository root, common entry points include:

| Goal | Command |
| ---- | ------- |
| Install all packages | `pnpm install` |
| Build the MdEditor UI | `pnpm build` or `pnpm build:ui:mdeditor` |
| Lint everything | `pnpm lint` |
| Test everything | `pnpm test` |
| Accessibility tests (mdeditor) | `pnpm test-a11y` |

Filter to one package with `pnpm run --filter <name> <script>` (see [Developer setup](./developer-setup)).

## Related reading

- [MdEditor application](../apps/mdeditor)
- [Core addon](../addons/core)
- [Md UI addon](../addons/md/)
