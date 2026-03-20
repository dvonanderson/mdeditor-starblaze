'use strict';

const { defineConfig, globalIgnores } = require('eslint/config');
const babelParser = require('@babel/eslint-parser');
const js = require('@eslint/js');
const eslintPluginEmberRecommended = require('eslint-plugin-ember/configs/recommended');
const nPlugin = require('eslint-plugin-n');
const qunitPlugin = require('eslint-plugin-qunit');
const eslintConfigPrettier = require('eslint-config-prettier/flat');
const globals = require('globals');

module.exports = defineConfig([
  js.configs.recommended,
  ...eslintPluginEmberRecommended,
  {
    languageOptions: {
      parser: babelParser,
      parserOptions: {
        ecmaVersion: 'latest',
        sourceType: 'module',
        requireConfigFile: false,
        babelOptions: {
          plugins: [
            [
              '@babel/plugin-proposal-decorators',
              { decoratorsBeforeExport: true },
            ],
          ],
        },
      },
      globals: {
        ...globals.browser,
      },
    },
    rules: {
      curly: ['error', 'multi-line', 'consistent'],
      'ember/no-get': 'off',
      'ember/no-get-with-default': 'off',
      'ember/no-computed-properties-in-native-classes': 'off',
      'ember/no-assignment-of-untracked-properties-used-in-tracking-contexts':
        'off',
    },
  },
  {
    files: [
      'eslint.config.js',
      '.prettierrc.js',
      '.stylelintrc.js',
      '.template-lintrc.js',
      'ember-cli-build.js',
      'testem.js',
      'config/**/*.js',
      'server/**/*.js',
    ],
    plugins: { n: nPlugin },
    extends: [nPlugin.configs['flat/recommended-script']],
  },
  {
    files: ['tests/**/*-test.{js,ts}'],
    extends: [
      { ...qunitPlugin.configs.recommended, plugins: { qunit: qunitPlugin } },
    ],
    rules: {
      'qunit/require-expect': [2, 'except-simple'],
    },
  },
  eslintConfigPrettier,
  globalIgnores([
    'blueprints/*/files/',
    'declarations/',
    'dist/',
    'coverage/',
    '**/.*/',
    '.node_modules.ember-try/',
  ]),
]);
