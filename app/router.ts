import EmberRouter from '@embroider/router';
import config from 'mdeditor-starblaze/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('editor');
  this.route('demo');
});
