import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';

interface ProjectsSignature {
  Args: {
    model: unknown;
    controller: unknown;
  };
}

<template>
  {{pageTitle "Projects"}}
  {{outlet}}
</template> satisfies TOC<ProjectsSignature>;
