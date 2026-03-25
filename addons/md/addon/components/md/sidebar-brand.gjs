import FaIcon from '@fortawesome/ember-fontawesome/components/fa-icon';
import { faCircleQuestion, faPenToSquare } from '@fortawesome/free-solid-svg-icons';
import { LinkTo } from '@ember/routing';

<template><div
  class='md-sidebar-brand border-bottom border-end border-2 border-secondary px-3'
>
  <div class='md-sidebar-brand__identity'>
    <span class='md-sidebar-brand__md'>md</span>
    <FaIcon
      @icon={{faPenToSquare}}
      class='md-sidebar-brand__icon'
      aria-hidden='true'
    />
    <span class='md-sidebar-brand__editor'>editor</span>
    {{#if @version}}
      <span class='md-sidebar-brand__version'>v{{@version}}</span>
    {{/if}}
  </div>
  <LinkTo
    @route='help'
    class='md-sidebar-brand__help'
    aria-label={{@helpLabel}}
    title={{@helpLabel}}
  >
    <FaIcon @icon={{faCircleQuestion}} />
  </LinkTo>
</div></template>
