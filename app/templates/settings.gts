import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';

interface SettingsSignature {
  Args: {
    model: unknown;
    controller: unknown;
  };
}

<template>
  {{pageTitle "Settings"}}
  {{outlet}}
</template> satisfies TOC<SettingsSignature>;
