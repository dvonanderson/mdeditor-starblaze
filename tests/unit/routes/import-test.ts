import { module, test } from 'qunit';
import { setupTest } from 'mdeditor-starblaze/tests/helpers';

module('Unit | Route | import', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    const route = this.owner.lookup('route:import');
    assert.ok(route);
  });
});
