'use strict';

module.exports = {
  plugins: ['prettier-plugin-ember-template-tag'],
  singleQuote: true,
  printWidth: 80,
  overrides: [
    {
      files: '*.{gjs,gts}',
      options: {
        templateSingleQuote: false,
      },
    },
  ],
};
