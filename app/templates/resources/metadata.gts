import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';

interface MetadataSignature {
  Args: {
    model: unknown;
    controller: unknown;
  };
}

<template>
  {{pageTitle "Metadata"}}
  {{outlet}}
</template> satisfies TOC<MetadataSignature>;
