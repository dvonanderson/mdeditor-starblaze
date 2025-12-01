import { pageTitle } from 'ember-page-title';
import SidebarNav from '../components/sidebar-nav';
import TopNavbar from '../components/top-navbar';
import BreadcrumbNav from '../components/breadcrumb-nav';

<template>
  {{pageTitle "MdeditorStarblaze"}}

  <div class="app-layout">
    <SidebarNav />

    <div class="main-content">
      <TopNavbar />
      <BreadcrumbNav />

      <main class="content-area">
        {{outlet}}
      </main>
    </div>
  </div>
</template>
