# Primary navigation (`Md::PrimaryNav`)

## In plain language

The **dark gray bar** to the right of the left sidebar contains the main **product areas** (Dashboard, Export, Import, …). On small screens it includes a **three-line menu button** that opens the left drawer. **Settings** appears on the **far right**.

## Source file

`addons/md/addon/components/md/primary-nav.gjs`

## Inputs (arguments)

Labels and behavior are passed in from the host so they can be **translated**:

- `@onToggleLeft`, `@sidebarOpen` — sidebar drawer toggle + `aria-expanded`
- `@ariaLabel`, `@toggleSidebarLabel`
- Route labels: `@dashboardLabel`, `@exportLabel`, `@importLabel`, `@publishLabel`, `@syncLabel`, `@settingsLabel`

## Logic & “services”

**No Ember services** in this component: it only renders links and a button, and calls the actions the host supplies.
