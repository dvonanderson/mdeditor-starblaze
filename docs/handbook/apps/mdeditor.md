# MdEditor application

The **mdeditor** package (`ui/mdeditor`) is the **host Ember application** for the MdEditor product UI.

## Responsibilities

- **Routes and URLs** — what users can navigate to.
- **Composition** — wiring shared layout from the **md** addon with app-specific templates.
- **Application state** — for example, sidebar open/close may live on an application-level controller so **md** components stay presentational.
- **Translations** — app-specific strings (often alongside **core** i18n where shared).

## Repo location

| Area | Typical path |
| ---- | ------------- |
| App code | `ui/mdeditor/app/` |
| Tests | `ui/mdeditor/tests/` |
| Configuration | `ui/mdeditor/config/` |

## Relationship to addons

The app lists **md** and **core** as dependencies so it can import components, services, and styles from those packages. Product-only code stays here; cross-app reuse moves to **addons**.

## Related reading

- [Monorepo structure](../overview/monorepo-structure)
- [Md UI addon](../addons/md/)
- [Core addon](../addons/core)
