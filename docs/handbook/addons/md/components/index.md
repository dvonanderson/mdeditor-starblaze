# Components overview

Components live under **`addons/md/addon/components/md/`** in the monorepo. In templates they are invoked as **`Md::ComponentName`** (e.g. `Md::AppShell`).

| Component | Role |
| --------- | ---- |
| [App shell](./app-shell.md) | Page frame: left rail, chrome, main area, right rail, mobile drawer. |
| [Primary navigation](./primary-nav.md) | Top gray bar: global routes + menu toggle + settings. |
| [Context title bar](./context-title-bar.md) | Light strip under primary nav: current context title. |
| [Sidebar brand](./sidebar-brand.md) | Wordmark, version, help link at top of left rail. |
| [Sidebar navigation](./sidebar-nav.md) | Accordion list for collapsible groups in the left rail. |
| [Card](./card.md) | Simple content card (Bootstrap card). |

**There is no `Md::Something` service:** behavior such as open/close sidebar state is owned by the **host application** (e.g. `ApplicationController` in `ui/mdeditor`).
