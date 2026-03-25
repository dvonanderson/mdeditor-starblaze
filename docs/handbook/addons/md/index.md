# What is the md addon?

The **md** package is an **Ember.js addon** in this monorepo. Think of it as a **shared UI kit** for MdEditor: the pieces that make different screens look and behave like one product.

## What it provides

| Area | What you get |
| ------ | ------------- |
| **Layout** | Full-height left rail, main column with top “chrome,” optional right column, and a scrollable content area. |
| **Navigation UI** | Primary links (Dashboard, Export, …), settings entry, sidebar accordion sections, brand + help in the rail. |
| **Look & feel** | Colors, spacing, and typography aligned with MdEditor; built on **Bootstrap 5** SCSS. |

## What it does *not* provide

The md addon is focused on **presentation and structure**. It does **not** ship:

- **Backend APIs** or HTTP clients  
- **Ember services** (login, data stores, sync logic)  
- **Business rules** (validation, record workflows)

Those usually live in the main MdEditor app (`ui/mdeditor`) or in the **`core`** addon (shared non-UI logic).

## Where the code lives (for contributors)

In the repository:

- **Components & templates:** `addons/md/addon/components/md/`  
- **Styles:** `addons/md/addon/styles/` (for example `_app-shell.scss`, `addon.scss`)  
- **Package metadata:** `addons/md/package.json`

The running MdEditor app **consumes** this addon as a dependency and places your routes inside the layout the addon defines.
