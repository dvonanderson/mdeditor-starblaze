# Sidebar brand (`Md::SidebarBrand`)

## In plain language

The **top row of the left sidebar**: the mdEditor-style **wordmark**, **version** text, and a **help** control (usually linking to the help route).

## Source file

`addons/md/addon/components/md/sidebar-brand.gjs`

## Inputs

- `@version` — optional version string (e.g. from `config.APP.version`).
- `@helpLabel` — accessible label for the help link.

## Logic & “services”

**Presentation only** — links are declared in the component template; no data fetching.
