import { module, test } from 'qunit';
import { setupTest } from 'mdeditor-starblaze/tests/helpers';

module('Unit | Route | export', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    const route = this.owner.lookup('route:export');
    assert.ok(route);
  });
});
