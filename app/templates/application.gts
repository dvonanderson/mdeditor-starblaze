import { pageTitle } from 'ember-page-title';
import { LinkTo } from '@ember/routing';

<template>
  {{pageTitle "MdeditorStarblaze"}}

  <nav class="navbar navbar-expand-lg main-nav">
    <div class="container-fluid">
      <h1 class="navbar-brand mb-0">MDEditor Starblaze</h1>
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <LinkTo @route="editor" class="nav-link">
              <i class="bi bi-pencil-square"></i> Markdown Editor
            </LinkTo>
          </li>
          <li class="nav-item">
            <LinkTo @route="demo" class="nav-link">
              <i class="bi bi-speedometer2"></i> Component Demo
            </LinkTo>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <main>
    {{outlet}}
  </main>
</template>
