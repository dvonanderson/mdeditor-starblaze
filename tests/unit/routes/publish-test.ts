import { module, test } from 'qunit';
import { setupTest } from 'mdeditor-starblaze/tests/helpers';

module('Unit | Route | publish', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    const route = this.owner.lookup('route:publish');
    assert.ok(route);
  });
});
