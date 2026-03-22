import { on } from '@ember/modifier';

<template><div class='md-app-shell d-flex flex-column'>
  <div class='md-app-shell__body d-flex flex-grow-1'>
    {{#if @leftSidebarOpen}}
      <aside
        aria-label='Left sidebar'
        class='md-app-shell__sidebar md-app-shell__sidebar--left border-end bg-body-tertiary overflow-auto'
      >
        {{yield to='left'}}
      </aside>
    {{/if}}

    <div class='d-flex flex-column flex-grow-1 min-w-0'>
      <header class='md-app-shell__navbar border-bottom bg-body shadow-sm'>
        <nav
          aria-label='Primary'
          class='navbar navbar-expand-md navbar-light py-2'
        >
          <div class='container-fluid gx-3'>
            <button
              type='button'
              class='navbar-toggler me-2'
              aria-label='Toggle left sidebar'
              {{on 'click' @onToggleLeft}}
            >
              <span class='navbar-toggler-icon'></span>
            </button>
            <div class='navbar-collapse'>
              {{yield to='navbar'}}
            </div>
          </div>
        </nav>
      </header>

      <main class='md-app-shell__content flex-grow-1 overflow-auto p-3'>
        {{yield}}
      </main>
    </div>

    <aside
      aria-label='Right sidebar'
      class='md-app-shell__sidebar md-app-shell__sidebar--right border-start bg-body-tertiary overflow-auto'
    >
      {{yield to='right'}}
    </aside>
  </div>
</div></template>
