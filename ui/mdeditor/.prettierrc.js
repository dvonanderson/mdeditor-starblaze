'use strict';

module.exports = {
    plugins: ['prettier-plugin-ember-template-tag'],
    singleQuote: true,
    printWidth: 80,
    trailingComma: 'es5',
    tabWidth: 4,
    overrides: [
        {
            files: '*.{gjs,gts}',
            options: {
                templateSingleQuote: false,
            },
        },
    ],
};
