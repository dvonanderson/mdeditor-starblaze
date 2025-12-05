import { LinkTo } from '@ember/routing';
import ThemeToggle from './theme-toggle';

<template>
  <nav class="top-navbar navbar navbar-expand-lg border border-light">
    <div class="container-fluid">
      <div class="navbar-nav me-auto">
        <LinkTo @route="dashboard" class="nav-link">
          <i class="bi bi-speedometer2"></i>
          Dashboard
        </LinkTo>
        <LinkTo @route="export" class="nav-link">
          <i class="bi bi-download"></i>
          Export
        </LinkTo>
        <LinkTo @route="import" class="nav-link">
          <i class="bi bi-upload"></i>
          Import
        </LinkTo>
        <LinkTo @route="publish" class="nav-link">
          <i class="bi bi-cloud-upload"></i>
          Publish
        </LinkTo>
      </div>

      <div class="navbar-nav align-items-center">
        <div class="nav-item me-3">
          <ThemeToggle />
        </div>
        <LinkTo @route="settings" class="nav-link">
          <i class="bi bi-gear"></i>
          Settings
        </LinkTo>
      </div>
    </div>
  </nav>
</template>
