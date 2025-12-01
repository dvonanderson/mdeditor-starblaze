import { LinkTo } from '@ember/routing';

<template>
  <nav
    class="top-navbar navbar navbar-expand-lg navbar-light bg-white border-bottom shadow-sm"
  >
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

      <div class="navbar-nav">
        <LinkTo @route="settings" class="nav-link">
          <i class="bi bi-gear"></i>
          Settings
        </LinkTo>
      </div>
    </div>
  </nav>
</template>
