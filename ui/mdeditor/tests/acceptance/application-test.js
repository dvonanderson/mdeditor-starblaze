import { module, test } from 'qunit';
import { setupApplicationTest } from 'mdeditor/tests/helpers';
import { visit, currentURL } from '@ember/test-helpers';

module('Acceptance | application', function (hooks) {
  setupApplicationTest(hooks);

  test('redirects to the dashboard route on initialization', async function (assert) {
    await visit('/');
    assert.strictEqual(currentURL(), '/dashboard');
  });

  test('dashboard route renders the correct page title', async function (assert) {
    await visit('/dashboard');
    assert.ok(document.title.includes('Dashboard'));
  });

  test('export route renders the correct page title', async function (assert) {
    await visit('/export');
    assert.ok(document.title.includes('Export'));
  });

  test('import route renders the correct page title', async function (assert) {
    await visit('/import');
    assert.ok(document.title.includes('Import'));
  });

  test('translate route renders the correct page title', async function (assert) {
    await visit('/translate');
    assert.ok(document.title.includes('Translate'));
  });
});
