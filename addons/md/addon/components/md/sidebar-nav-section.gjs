import Component from '@glimmer/component';
import { action } from '@ember/object';
import { tracked } from '@glimmer/tracking';
import FaIcon from '@fortawesome/ember-fontawesome/components/fa-icon';
import { faChevronRight } from '@fortawesome/free-solid-svg-icons';
import { on } from '@ember/modifier';

export default class MdSidebarNavSection extends Component {
  chevronIcon = faChevronRight;

  @tracked isOpen;

  constructor(owner, args) {
    super(owner, args);
    this.isOpen = args.defaultOpen ?? false;
  }

  @action
  toggle() {
    this.isOpen = !this.isOpen;
  }

  <template><li class='md-sidebar-nav__item mb-1'>
  <button
    type='button'
    class='md-sidebar-nav__toggle'
    aria-expanded={{this.isOpen}}
    aria-controls={{@panelId}}
    {{on 'click' this.toggle}}
  >
    <FaIcon
      @icon={{this.chevronIcon}}
      class='md-sidebar-nav__chevron
        {{if this.isOpen "md-sidebar-nav__chevron--open"}}'
      aria-hidden='true'
    />
    <span class='md-sidebar-nav__toggle-label'>{{@title}}</span>
  </button>
  <div id={{@panelId}} class='collapse {{if this.isOpen "show"}}'>
    <ul class='md-sidebar-nav__sublinks list-unstyled fw-normal pb-1 small'>
      {{yield}}
    </ul>
  </div>
</li></template>
}
