# Core addon

The **core** package (`addons/core`) is an **Ember addon** for **shared, non–UI-centric** building blocks used by MdEditor UIs.

## Responsibilities

Typical contents (exact modules evolve with the product):

- **Services** — cross-cutting app behavior that is not tied to a single visual component.
- **Helpers and utilities** — data transforms, shared formatting, small pure functions exposed to templates.
- **Primitives** — things multiple apps or routes rely on that are **not** primarily layout or styling.

It is **not** the home for screen layout, navigation chrome, or product-wide SCSS tokens — that is the **md** addon.

## Repo location

| Area | Typical path |
| ---- | ------------- |
| Addon code | `addons/core/addon/` |
| App re-exports / tests | `addons/core/app/` |
| Package metadata | `addons/core/package.json` |

## Package name

pnpm filter: **`core`**

```bash
pnpm run --filter core lint
pnpm run --filter core test
```

## Related reading

- [Monorepo structure](../overview/monorepo-structure)
- [MdEditor application](../apps/mdeditor)
- [Md UI addon](./md/)
