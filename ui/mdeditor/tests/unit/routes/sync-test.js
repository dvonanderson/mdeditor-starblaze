import { module, test } from 'qunit';
import { setupTest } from 'mdeditor/tests/helpers';

module('Unit | Route | sync', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    let route = this.owner.lookup('route:sync');
    assert.ok(route);
  });
});
