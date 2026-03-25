import EmberRouter from '@ember/routing/router';
import config from 'mdeditor/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('dashboard');
  this.route('export');
  this.route('import');
  this.route('publish');
  this.route('translate');
  this.route('help');
  this.route('settings', function () {
    this.route('validation');
    this.route('profile', function () {
      this.route('manage');
    });
    this.route('main');
  });

  this.route('sync', function () {
    this.route('list');

    this.route('import', {
      path: '/import/:import:id',
    });
  });
});
