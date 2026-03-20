/**
 * Copyright IBM Corp. 2021, 2025
 * SPDX-License-Identifier: BUSL-1.1
 */

/**
 * Debugging:
 *   https://eslint.org/docs/latest/use/configure/debug
 *  ----------------------------------------------------
 *
 *   Print a file's calculated configuration
 *
 *     npx eslint --print-config path/to/file.js
 *
 *   Inspecting the config
 *
 *     npx eslint --inspect-config
 *
 */

import { FlatCompat } from '@eslint/eslintrc';
import js from '@eslint/js';
import globals from 'globals';
import babelParser from '@babel/eslint-parser';
import emberParser from 'ember-eslint-parser';
import n from 'eslint-plugin-n';
import qunit from 'eslint-plugin-qunit';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const compat = new FlatCompat({
  baseDirectory: __dirname,
  recommendedConfig: js.configs.recommended,
});

const babelParserOptions = {
  requireConfigFile: false,
  babelOptions: {
    plugins: [
      ['@babel/plugin-proposal-decorators', { decoratorsBeforeExport: true }],
    ],
  },
};

export default [
  js.configs.recommended,
  ...compat.extends('plugin:ember/recommended', 'prettier'),

  /**
   * Ignores must be in their own object
   * https://eslint.org/docs/latest/use/configure/ignore
   */
  {
    ignores: [
      'blueprints/*/files/',
      'declarations/',
      'dist/',
      'coverage/',
      '.node_modules.ember-try/',
    ],
  },

  {
    linterOptions: {
      reportUnusedDisableDirectives: 'error',
    },
  },

  /**
   * JS app files — babel parser for decorator support
   */
  {
    files: ['**/*.js'],
    languageOptions: {
      parser: babelParser,
      parserOptions: babelParserOptions,
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

  /**
   * GJS files — ember-eslint-parser handles <template> tags
   */
  {
    files: ['**/*.gjs'],
    languageOptions: {
      parser: emberParser,
      parserOptions: babelParserOptions,
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

  /**
   * Test files
   */
  {
    files: ['tests/**/*-test.{js,gjs}'],
    plugins: { qunit },
    rules: {
      ...qunit.configs.recommended.rules,
      'qunit/require-expect': [2, 'except-simple'],
    },
  },

  /**
   * CJS node files
   */
  {
    files: [
      '**/*.cjs',
      '.prettierrc.js',
      '.stylelintrc.js',
      '.template-lintrc.js',
      'ember-cli-build.js',
      'testem.js',
      'blueprints/*/index.js',
      'config/**/*.js',
      'lib/*/index.js',
      'server/**/*.js',
    ],
    plugins: { n },
    languageOptions: {
      sourceType: 'script',
      ecmaVersion: 'latest',
      globals: {
        ...globals.node,
      },
    },
    rules: {
      ...n.configs.recommended.rules,
    },
  },
];
