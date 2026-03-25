import FaIcon from '@fortawesome/ember-fontawesome/components/fa-icon';
import {
  faArrowsRotate,
  faCloudArrowUp,
  faFileExport,
  faFileImport,
  faGaugeHigh,
  faGear,
} from '@fortawesome/free-solid-svg-icons';
import { LinkTo } from '@ember/routing';
import { on } from '@ember/modifier';

<template><nav aria-label={{@ariaLabel}} class='md-primary-nav'>
  <div class='md-primary-nav__inner'>
    <button
      type='button'
      class='md-primary-nav__menu-toggle'
      aria-label={{@toggleSidebarLabel}}
      aria-expanded={{@sidebarOpen}}
      aria-controls='md-app-shell-left-sidebar'
      {{on 'click' @onToggleLeft}}
    >
      <span class='md-primary-nav__menu-bar' aria-hidden='true'></span>
      <span class='md-primary-nav__menu-bar' aria-hidden='true'></span>
      <span class='md-primary-nav__menu-bar' aria-hidden='true'></span>
    </button>
    <ul class='md-primary-nav__list'>
      <li class='md-primary-nav__item'>
        <LinkTo
          @route='dashboard'
          class='md-primary-nav__link'
          title={{@dashboardLabel}}
        >
          <FaIcon @icon={{faGaugeHigh}} class='md-primary-nav__icon' />
          <span>{{@dashboardLabel}}</span>
        </LinkTo>
      </li>
      <li class='md-primary-nav__item'>
        <LinkTo
          @route='export'
          class='md-primary-nav__link'
          title={{@exportLabel}}
        >
          <FaIcon @icon={{faFileExport}} class='md-primary-nav__icon' />
          <span>{{@exportLabel}}</span>
        </LinkTo>
      </li>
      <li class='md-primary-nav__item'>
        <LinkTo
          @route='import'
          class='md-primary-nav__link'
          title={{@importLabel}}
        >
          <FaIcon @icon={{faFileImport}} class='md-primary-nav__icon' />
          <span>{{@importLabel}}</span>
        </LinkTo>
      </li>
      <li class='md-primary-nav__item'>
        <LinkTo
          @route='publish'
          class='md-primary-nav__link'
          title={{@publishLabel}}
        >
          <FaIcon @icon={{faCloudArrowUp}} class='md-primary-nav__icon' />
          <span>{{@publishLabel}}</span>
        </LinkTo>
      </li>
      <li class='md-primary-nav__item'>
        <LinkTo @route='sync' class='md-primary-nav__link' title={{@syncLabel}}>
          <FaIcon @icon={{faArrowsRotate}} class='md-primary-nav__icon' />
          <span>{{@syncLabel}}</span>
        </LinkTo>
      </li>
    </ul>
    <div class='md-primary-nav__end'>
      <LinkTo
        @route='settings'
        class='md-primary-nav__link'
        title={{@settingsLabel}}
      >
        <FaIcon @icon={{faGear}} class='md-primary-nav__icon' />
        <span>{{@settingsLabel}}</span>
      </LinkTo>
    </div>
  </div>
</nav></template>
