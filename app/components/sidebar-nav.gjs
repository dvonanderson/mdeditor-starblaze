import Component from '@glimmer/component';
import { LinkTo } from '@ember/routing';

export default class SidebarNavComponent extends Component {
  // Mock data for resource links
  resourceLinks = [
    { route: 'resources.metadata', label: 'Records', icon: 'bi-file-earmark-text' },
    { route: 'resources.contacts', label: 'Contacts', icon: 'bi-person-lines-fill' },
    { route: 'resources.dictionaries', label: 'Dictionaries', icon: 'bi-book' },
  ];

  <template>
    <aside class="sidebar-nav bg-dark border-end">
      <div class="sidebar-header p-3 border-bottom">
        <LinkTo @route="index" class="text-decoration-none">
          <h4 class="mb-0 text-secondary">
            md<i class="md-icon-mdeditor"></i>ditor
          </h4>
        </LinkTo>
      </div>

      <nav class="sidebar-links p-3">
        <ul class="nav flex-column">
          {{#each this.resourceLinks as |link|}}
            <li class="nav-item mb-2">
              <LinkTo
                @route={{link.route}}
                class="nav-link d-flex align-items-center"
              >
                <i class="{{link.icon}} me-2"></i>
                {{link.label}}
              </LinkTo>
            </li>
          {{/each}}
        </ul>
      </nav>
    </aside>
  </template>
}
