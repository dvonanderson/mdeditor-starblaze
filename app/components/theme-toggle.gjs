import Component from '@glimmer/component';
import { service } from '@ember/service';
import { on } from '@ember/modifier';

export default class ThemeToggleComponent extends Component {
  @service declare theme;

  toggleTheme = () => {
    this.theme.toggleTheme();
  };

  <template>
    <button
      type="button"
      class="btn btn-outline-secondary theme-toggle"
      {{on "click" this.toggleTheme}}
      aria-label="Toggle theme"
      title={{if
        this.theme.isDark
        "Switch to light mode"
        "Switch to dark mode"
      }}
    >
      {{#if this.theme.isDark}}
        <i class="bi bi-sun-fill"></i>
        <span class="d-none d-md-inline ms-2">Light</span>
      {{else}}
        <i class="bi bi-moon-stars-fill"></i>
        <span class="d-none d-md-inline ms-2">Dark</span>
      {{/if}}
    </button>
  </template>
}
