import { module, test } from 'qunit';
import { setupTest } from 'mdeditor/tests/helpers';

module('Unit | Route | settings/profile/manage', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    let route = this.owner.lookup('route:settings/profile/manage');
    assert.ok(route);
  });
});
