import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';

interface DashboardSignature {
  Args: {
    model: unknown;
    controller: unknown;
  };
}

<template>
  {{pageTitle "Dashboard"}}

  <div class="container-fluid">
    <div class="row mb-4">
      <div class="col-12">
        <h1 class="display-4">Dashboard</h1>
        <p class="lead text-muted">Welcome to MDEditor Starblaze</p>
      </div>
    </div>

    <div class="row g-4">
      <div class="col-md-3">
        <div class="card border-primary">
          <div class="card-body">
            <h5 class="card-title">
              <i class="bi bi-file-earmark-text text-primary"></i>
              Metadata Records
            </h5>
            <p class="display-6 mb-0">24</p>
            <small class="text-muted">Total records</small>
          </div>
        </div>
      </div>

      <div class="col-md-3">
        <div class="card border-success">
          <div class="card-body">
            <h5 class="card-title">
              <i class="bi bi-person-lines-fill text-success"></i>
              Contacts
            </h5>
            <p class="display-6 mb-0">12</p>
            <small class="text-muted">Total contacts</small>
          </div>
        </div>
      </div>

      <div class="col-md-3">
        <div class="card border-info">
          <div class="card-body">
            <h5 class="card-title">
              <i class="bi bi-book text-info"></i>
              Dictionaries
            </h5>
            <p class="display-6 mb-0">8</p>
            <small class="text-muted">Total dictionaries</small>
          </div>
        </div>
      </div>

      <div class="col-md-3">
        <div class="card border-warning">
          <div class="card-body">
            <h5 class="card-title">
              <i class="bi bi-folder text-warning"></i>
              Projects
            </h5>
            <p class="display-6 mb-0">5</p>
            <small class="text-muted">Total projects</small>
          </div>
        </div>
      </div>
    </div>

    <div class="row mt-4">
      <div class="col-12">
        <div class="card">
          <div class="card-header bg-primary text-white">
            <h5 class="mb-0">Recent Activity</h5>
          </div>
          <div class="card-body">
            <ul class="list-group list-group-flush">
              <li class="list-group-item">
                <i class="bi bi-file-earmark-plus text-success"></i>
                <strong>New metadata record created:</strong>
                "Climate Data 2024"
                <small class="text-muted float-end">2 hours ago</small>
              </li>
              <li class="list-group-item">
                <i class="bi bi-pencil text-primary"></i>
                <strong>Metadata record updated:</strong>
                "Soil Survey Dataset"
                <small class="text-muted float-end">5 hours ago</small>
              </li>
              <li class="list-group-item">
                <i class="bi bi-person-plus text-info"></i>
                <strong>New contact added:</strong>
                "Dr. Jane Smith"
                <small class="text-muted float-end">1 day ago</small>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  {{outlet}}
</template> satisfies TOC<DashboardSignature>;
