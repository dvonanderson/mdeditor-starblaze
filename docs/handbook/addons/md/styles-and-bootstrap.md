# Styles and Bootstrap

## Bootstrap

The md addon bundles **Bootstrap 5** as **SCSS**. Applications that use md typically import its stylesheet so that:

- Utility classes (spacing, flex, borders, …) work as documented on [getbootstrap.com](https://getbootstrap.com/).
- Components such as **collapse** (show/hide panels) have matching CSS. The sidebar accordion uses the **`collapse` / `show`** classes; open/close is driven by **Ember** logic, not the Bootstrap JavaScript bundle.

## Custom look

MdEditor-specific styling lives in SCSS partials under **`addons/md/addon/styles/`**, especially:

- **`_app-shell.scss`** — shell, sidebars, primary nav, sidebar accordion, brand row.  
- **`_variables.scss`** — overrides of Bootstrap variables (tokens) where needed.  
- **`addon.scss`** — entry that pulls variables, Bootstrap, and app-shell.

Changing colors or rail width is done here (or by extending these partials) rather than editing Bootstrap’s core files.

## Icons

Icons in the chrome (e.g. dashboard, settings, sidebar chevron) come from **Font Awesome**, integrated via **`@fortawesome/ember-fontawesome`**. That is a **dependency of the md addon**, not a separate “service.”
