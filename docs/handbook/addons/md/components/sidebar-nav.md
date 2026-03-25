# Sidebar navigation (`Md::SidebarNav` & `Md::SidebarNavSection`)

## In plain language

**Collapsible sections** in the left rail (similar to an accordion): each row has a **title**; clicking expands or collapses **nested links**. This mirrors patterns from Bootstrap’s sidebar examples but uses **Ember state** for open/close (no Bootstrap JS required).

## Source files

- `addons/md/addon/components/md/sidebar-nav.gjs` — wrapper `<nav>` + list.
- `addons/md/addon/components/md/sidebar-nav-section.gjs` — one section (toggle + panel).

## `Md::SidebarNavSection` inputs

| Argument | Purpose |
| -------- | ------- |
| `@panelId` | **Required.** Unique `id` for the panel (accessibility: `aria-controls` / `id`). |
| `@title` | Section heading (string). |
| `@defaultOpen` | Optional. If `true`, section starts expanded. |

The **default block** is yielded **inside** the sub-list: use `<li>` + links (or `LinkTo`) as in the MdEditor `application` template.

## Logic & “services”

Each section holds **local UI state** (`isOpen`) with `@tracked` and an `@action` toggle. There is **no shared service** unless the host app adds one later.
