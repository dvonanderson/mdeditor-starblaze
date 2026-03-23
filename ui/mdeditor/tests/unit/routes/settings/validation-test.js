import { module, test } from 'qunit';
import { setupTest } from 'mdeditor/tests/helpers';

module('Unit | Route | settings/validation', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    let route = this.owner.lookup('route:settings/validation');
    assert.ok(route);
  });
});
