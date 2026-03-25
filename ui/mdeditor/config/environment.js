'use strict';

const packageJson = require('../package.json');

const APP_NAME = process.env.APP_NAME || 'MdEditor';
const ENABLE_A11Y_AUDIT = process.env.ENABLE_A11Y_AUDIT || false;
const COLOR_THEME = process.env.COLOR_THEME || 'light';

module.exports = function (environment) {
  const ENV = {
    modulePrefix: 'mdeditor',
    environment,
    rootURL: '/',
    locationType: 'history',
    EmberENV: {
      EXTEND_PROTOTYPES: false,
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. EMBER_NATIVE_DECORATOR_SUPPORT: true
      },
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
      version: packageJson.version,
    },

    appName: APP_NAME,
    companyName: 'ADIWG',

    flashMessageDefaults: {
      timeout: 4000,
    },

    intl: {
      defaultLocale: 'en-us',
    },
  };

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    // ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    // ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
    ENV.APP.autoboot = false;

    ENV.flashMessageDefaults.timeout = 0;

    ENV.ENABLE_A11Y_AUDIT = ENABLE_A11Y_AUDIT;
    ENV.COLOR_THEME = COLOR_THEME;
  }

  if (environment === 'production') {
    // here you can enable a production-specific feature
  }

  return ENV;
};
