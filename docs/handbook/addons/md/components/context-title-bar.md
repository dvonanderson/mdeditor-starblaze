# Context title bar (`Md::ContextTitleBar`)

## In plain language

A **light strip** under the primary navigation that shows a **short title** for the current area (for example “Dashboard” or “Records”), helping users stay oriented.

## Source file

`addons/md/addon/components/md/context-title-bar.gjs`

## Inputs

- `@title` — string (usually a translated label computed by the host app, not by this addon).

## Logic & “services”

**Display only.** Which title to show is decided by the host (e.g. from the current route).
