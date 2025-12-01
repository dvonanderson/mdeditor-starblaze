import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';

interface ImportSignature {
  Args: {
    model: unknown;
    controller: unknown;
  };
}

<template>
  {{pageTitle "Import"}}
  {{outlet}}
</template> satisfies TOC<ImportSignature>;
