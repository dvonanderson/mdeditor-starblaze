import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';

interface PublishSignature {
  Args: {
    model: unknown;
    controller: unknown;
  };
}

<template>
  {{pageTitle "Publish"}}
  {{outlet}}
</template> satisfies TOC<PublishSignature>;
