import { on } from '@ember/modifier';

<template><div class='md-app-shell d-flex flex-row min-vh-100'>
  <aside
    id='md-app-shell-left-sidebar'
    aria-label='Left sidebar'
    class='md-app-shell__sidebar md-app-shell__sidebar--left
      {{if @leftSidebarOpen "md-app-shell__sidebar--left-open"}}'
  >
    {{yield to='left'}}
  </aside>

  {{#if @leftSidebarOpen}}
    <button
      type='button'
      class='md-app-shell__sidebar-backdrop'
      aria-label={{@closeSidebarLabel}}
      {{on 'click' @onCloseLeftSidebar}}
    ></button>
  {{/if}}

  <div
    class='md-app-shell__main-column d-flex flex-column flex-grow-1 min-h-0 min-w-0'
  >
    <div class='md-app-shell__chrome flex-shrink-0'>
      {{yield to='primary'}}
      {{yield to='context'}}
    </div>

    <div class='md-app-shell__body d-flex flex-grow-1 min-h-0'>
      <main class='md-app-shell__content flex-grow-1 overflow-auto p-3'>
        {{yield}}
      </main>

      <aside
        aria-label='Right sidebar'
        class='md-app-shell__sidebar md-app-shell__sidebar--right border-start bg-body-tertiary overflow-auto'
      >
        {{yield to='right'}}
      </aside>
    </div>
  </div>
</div></template>
