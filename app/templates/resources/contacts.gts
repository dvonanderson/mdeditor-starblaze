import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';

interface ContactsSignature {
  Args: {
    model: unknown;
    controller: unknown;
  };
}

<template>
  {{pageTitle "Contacts"}}
  {{outlet}}
</template> satisfies TOC<ContactsSignature>;
