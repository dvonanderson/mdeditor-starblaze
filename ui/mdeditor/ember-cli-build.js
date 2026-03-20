'use strict';

const path = require('path');
const EmberApp = require('ember-cli/lib/broccoli/ember-app');

module.exports = function (defaults) {
  const app = new EmberApp(defaults, {
    autoImport: {
      webpack: {
        resolve: {
          symlinks: false,
          modules: [
            'node_modules',
            path.resolve(__dirname, 'node_modules'),
            path.resolve(__dirname, '../../node_modules'),
          ],
        },
      },
    },
  });

  return app.toTree();
};
