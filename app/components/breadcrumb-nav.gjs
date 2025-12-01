import Component from '@glimmer/component';
import { service } from '@ember/service';
import { LinkTo } from '@ember/routing';

export default class BreadcrumbNavComponent extends Component {
  @service router;

  get breadcrumbs() {
    // Generate breadcrumbs based on current route
    const currentRouteName = this.router.currentRouteName;
    const segments = currentRouteName.split('.');
    const breadcrumbs = [];

    // Always start with home
    breadcrumbs.push({ route: 'index', label: 'Home' });

    // Build breadcrumbs from route segments
    let accumulatedRoute = '';
    segments.forEach((segment, index) => {
      accumulatedRoute = accumulatedRoute ? `${accumulatedRoute}.${segment}` : segment;

      // Skip 'index' segments
      if (segment !== 'index') {
        breadcrumbs.push({
          route: accumulatedRoute,
          label: this.formatLabel(segment),
          isLast: index === segments.length - 1
        });
      }
    });

    return breadcrumbs;
  }

  formatLabel(segment) {
    // Convert route segment to readable label
    return segment
      .split('-')
      .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
      .join(' ');
  }

  <template>
    <nav aria-label="breadcrumb" class="breadcrumb-nav bg-light border-bottom py-2 px-3">
      <ol class="breadcrumb mb-0">
        {{#each this.breadcrumbs as |crumb|}}
          {{#if crumb.isLast}}
            <li class="breadcrumb-item active" aria-current="page">
              {{crumb.label}}
            </li>
          {{else}}
            <li class="breadcrumb-item">
              <LinkTo @route={{crumb.route}}>{{crumb.label}}</LinkTo>
            </li>
          {{/if}}
        {{/each}}
      </ol>
    </nav>
  </template>
}
