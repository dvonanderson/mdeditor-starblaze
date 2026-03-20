'use strict';

module.exports = {
  name: require('./package').name,

  options: {
    babel: {
      plugins: [
        require.resolve('ember-concurrency/async-arrow-task-transform'),
      ],
    },
  },

  setupPreprocessorRegistry(type, registry) {
    this._super.setupPreprocessorRegistry.apply(this, arguments);

    if (type === 'self') {
      const TemplateImportPreprocessor = require('ember-template-imports/src/preprocessor-plugin');
      registry.add('js', new TemplateImportPreprocessor({ inline_source_map: true }));
    }
  },
};
