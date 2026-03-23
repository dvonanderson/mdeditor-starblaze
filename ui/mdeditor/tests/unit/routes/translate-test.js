import { module, test } from 'qunit';
import { setupTest } from 'mdeditor/tests/helpers';

module('Unit | Route | translate', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    let route = this.owner.lookup('route:translate');
    assert.ok(route);
  });
});
