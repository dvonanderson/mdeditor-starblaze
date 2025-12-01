import EmberRouter from '@embroider/router';
import config from 'mdeditor-starblaze/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('editor');
  this.route('demo');
  this.route('dashboard');
  this.route('export');
  this.route('import');
  this.route('publish');
  this.route('settings');

  this.route('resources', function () {
    this.route('metadata');
    this.route('contacts');
    this.route('dictionaries');
    this.route('projects');
  });
});
