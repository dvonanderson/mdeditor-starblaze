# App shell (`Md::AppShell`)

## In plain language

**App shell** is the outer frame of MdEditor: it reserves space for the **left rail**, the **top navigation and title bars**, the **main work area**, and an optional **right sidebar**. On phones and narrow windows, the left rail can slide in as an overlay.

## Source file

`addons/md/addon/components/md/app-shell.gjs`

## What the host app must provide

The shell uses **named blocks** (slots). The MdEditor `application` template passes:

| Slot | Typical content |
| ---- | ----------------- |
| **`left`** | Brand, accordion nav, etc. |
| **`primary`** | `Md::PrimaryNav` |
| **`context`** | `Md::ContextTitleBar` |
| **`right`** | Secondary panels |
| **default** | The route outlet — where the current page’s template is rendered. |

## Inputs (arguments)

| Argument | Purpose |
| -------- | ------- |
| `@leftSidebarOpen` | Whether the left drawer should be treated as open on small screens (`true` / `false`). |
| `@onCloseLeftSidebar` | Action when the dimmed backdrop is clicked (should set sidebar closed). |
| `@closeSidebarLabel` | Accessible label for that backdrop control (e.g. translated “Close sidebar”). |

## Logic & “services”

**None inside the addon.** The shell only **yields** regions and wires **click/keyboard** affordances (e.g. backdrop). **State** (`leftSidebarOpen`, toggle actions) is implemented in the **application** layer.
