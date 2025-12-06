import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';
import { LinkTo } from '@ember/routing';

interface DashboardSignature {
  Args: {
    model: unknown;
    controller: unknown;
  };
}

<template>
  {{pageTitle "Dashboard"}}

  <div class="dashboard p-4">
    <div class="row g-3">
      {{! Records Card }}
      <div class="col-12 col-sm-4">
        <div class="card text-bg-primary text-center dashboard-card">
          <div class="card-body">
            <div class="row align-items-center">
              <div class="col-3">
                <i class="bi bi-file-earmark-text dashboard-card-icon"></i>
              </div>
              <div class="col-9 text-end">
                <div class="display-4 fw-bold">24</div>
                <div>Records</div>
              </div>
            </div>
          </div>
          <LinkTo
            @route="resources.metadata"
            class="card-footer dashboard-card-footer"
          >
            <span class="float-start">View Records</span>
            <span class="float-end"><i class="bi bi-arrow-right"></i></span>
          </LinkTo>
        </div>
      </div>

      {{! Contacts Card }}
      <div class="col-12 col-sm-4">
        <div class="card text-bg-success text-center dashboard-card">
          <div class="card-body">
            <div class="row align-items-center">
              <div class="col-3">
                <i class="bi bi-person-lines-fill dashboard-card-icon"></i>
              </div>
              <div class="col-9 text-end">
                <div class="display-4 fw-bold">12</div>
                <div>Contacts</div>
              </div>
            </div>
          </div>
          <LinkTo
            @route="resources.contacts"
            class="card-footer dashboard-card-footer"
          >
            <span class="float-start">View Contacts</span>
            <span class="float-end"><i class="bi bi-arrow-right"></i></span>
          </LinkTo>
        </div>
      </div>

      {{! Dictionaries Card }}
      <div class="col-12 col-sm-4">
        <div class="card text-bg-info text-center dashboard-card">
          <div class="card-body">
            <div class="row align-items-center">
              <div class="col-3">
                <i class="bi bi-book dashboard-card-icon"></i>
              </div>
              <div class="col-9 text-end">
                <div class="display-4 fw-bold">8</div>
                <div>Dictionaries</div>
              </div>
            </div>
          </div>
          <LinkTo
            @route="resources.dictionaries"
            class="card-footer dashboard-card-footer"
          >
            <span class="float-start">View Dictionaries</span>
            <span class="float-end"><i class="bi bi-arrow-right"></i></span>
          </LinkTo>
        </div>
      </div>
    </div>

    <hr class="my-4" />

    <div class="row">
      <div class="col-12 col-md-6 offset-md-3">
        <h2 class="text-center mb-4">
          <b><span class="dashboard-logo display-5">md<i
                class="md-icon-mdeditor"
              ></i>ditor</span></b>
        </h2>
        <p class="lead">
          The mdEditor is a web application that allows users to author and edit
          metadata for projects and datasets. The primary goal is to create an
          editor that will allow creation and management of archival quality
          metadata without requiring extensive knowledge of various metadata
          standards.
        </p>
        <p class="lead">
          The md<i class="md-icon-mdeditor"></i>ditor Version 1 has been
          released!
          <a
            href="https://github.com/adiwg/mdEditor/projects"
            target="_blank"
            rel="noopener noreferrer"
          >Follow progress</a>
          or
          <a
            href="https://github.com/adiwg/mdEditor/issues"
            target="_blank"
            rel="noopener noreferrer"
          >report issues</a>
          on
          <a
            href="https://github.com/adiwg/mdEditor"
            target="_blank"
            rel="noopener noreferrer"
          >the Github website</a>. For more information, see
          <a
            href="https://www.mdeditor.org"
            target="_blank"
            rel="noopener noreferrer"
          >mdeditor.org</a>.
        </p>
      </div>
    </div>
  </div>

  {{outlet}}
</template> satisfies TOC<DashboardSignature>;
