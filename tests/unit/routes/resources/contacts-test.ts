import { module, test } from 'qunit';
import { setupTest } from 'mdeditor-starblaze/tests/helpers';

module('Unit | Route | resources/contacts', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    const route = this.owner.lookup('route:resources/contacts');
    assert.ok(route);
  });
});
