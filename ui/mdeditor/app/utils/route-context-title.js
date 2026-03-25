/**
 * Maps `router.currentRouteName` to an ember-intl key under `resources.*`
 * for the context title bar (legacy mdEditor secondary chrome).
 */
const ROUTE_TITLE_KEYS = {
  dashboard: 'resources.dashboard.title',
  export: 'resources.export.title',
  import: 'resources.import.title',
  translate: 'resources.translate.title',
  help: 'resources.help.title',
  publish: 'resources.publish.title',
  sync: 'resources.sync.title',
  'sync.index': 'resources.sync.title',
  'sync.list': 'resources.sync.list.title',
  'sync.import': 'resources.sync.import.title',
  settings: 'resources.settings.title',
  'settings.index': 'resources.settings.title',
  'settings.validation': 'resources.settings.validation.title',
  'settings.profile': 'resources.settings.profile.title',
  'settings.profile.index': 'resources.settings.profile.title',
  'settings.profile.manage': 'resources.settings.profile.manage.title',
  'settings.main': 'resources.settings.main.title',
};

export function contextTitleKeyFor(routeName) {
  if (!routeName) {
    return 'resources.dashboard.title';
  }
  return ROUTE_TITLE_KEYS[routeName] ?? 'resources.dashboard.title';
}
