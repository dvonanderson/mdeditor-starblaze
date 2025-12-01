import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';

interface DictionariesSignature {
  Args: {
    model: unknown;
    controller: unknown;
  };
}

<template>
  {{pageTitle "Dictionaries"}}
  {{outlet}}
</template> satisfies TOC<DictionariesSignature>;
