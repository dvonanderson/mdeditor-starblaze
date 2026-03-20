'use strict';

const path = require('path');

module.exports = {
  name: require('./package').name,

  included(app) {
    this._super.included.apply(this, arguments);

    // Walk up to the actual app (handles nested addon scenarios)
    let target = app;
    while (target.app) {
      target = target.app;
    }

    // ember-cli-sass reads options from app.options.sassOptions (not ember-cli-sass)
    target.options = target.options || {};
    target.options.sassOptions = target.options.sassOptions || {};
    const sassOptions = target.options.sassOptions;

    // Bootstrap 5.3 uses deprecated Sass APIs — silence warnings from dependencies
    sassOptions.quietDeps = true;

    const includePaths = (sassOptions.includePaths = sassOptions.includePaths || []);
    includePaths.push(
      path.join(path.dirname(require.resolve('bootstrap/package.json')), 'scss')
    );
  },

  setupPreprocessorRegistry(type, registry) {
    this._super.setupPreprocessorRegistry.apply(this, arguments);

    if (type === 'self') {
      const TemplateImportPreprocessor = require('ember-template-imports/src/preprocessor-plugin');
      registry.add('js', new TemplateImportPreprocessor({ inline_source_map: true }));
    }
  },

  /**
   * Adjust SVG optimizer defaults (used by ember-inline-svg).
   * Note: Currently, there is a svgo pre-release that disables removeViewBox
   * by default. So, this extra setup can be discarded once ember-inline-svg
   * is updated to svgo v4.
   */
  setupSVGO(app) {
    app.options.svg = app.options.svg || {};
    app.options.svg.optimize = app.options.svg.optimize || {};
    app.options.svg.optimize.plugins = app.options.svg.optimize.plugins || [];
    app.options.svg.optimize.plugins.push({ removeViewBox: false });
  },
};
