import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';

export default class CounterComponent extends Component {
  @tracked count = 0;

  increment = () => {
    this.count++;
  };

  decrement = () => {
    this.count--;
  };

  reset = () => {
    this.count = 0;
  };

  <template>
    <div class="counter-component">
      <h3>Counter Component (.gjs Syntax Demo)</h3>

      <div class="counter-display">
        <p>Current Count: <strong>{{this.count}}</strong></p>
      </div>

      <div class="counter-controls btn-group" role="group">
        <button
          type="button"
          class="btn btn-light"
          {{on "click" this.decrement}}
        >
          <i class="bi bi-dash-lg"></i>
          Decrement
        </button>
        <button type="button" class="btn btn-warning" {{on "click" this.reset}}>
          <i class="bi bi-arrow-clockwise"></i>
          Reset
        </button>
        <button
          type="button"
          class="btn btn-light"
          {{on "click" this.increment}}
        >
          <i class="bi bi-plus-lg"></i>
          Increment
        </button>
      </div>

      <div class="counter-info">
        <p>
          This component demonstrates:
        </p>
        <ul>
          <li>✓ .gjs file format (template tag components)</li>
          <li>✓ @tracked reactive state</li>
          <li>✓ Action handlers (increment, decrement, reset)</li>
          <li>✓ Event handling with {{on}} modifier</li>
          <li>✓ Inline template syntax using &lt;template&gt; tags</li>
          <li>✓ Bootstrap 5 integration</li>
        </ul>
      </div>
    </div>
  </template>
}
