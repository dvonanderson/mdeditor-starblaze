import Controller from '@ember/controller';
import { action } from '@ember/object';
import { service } from '@ember/service';
import { tracked } from '@glimmer/tracking';
import config from 'mdeditor/config/environment';
import { contextTitleKeyFor } from 'mdeditor/utils/route-context-title';

export default class ApplicationController extends Controller {
  @service router;

  @tracked leftSidebarOpen = false;

  appVersion = config.APP.version;

  get contextTitleKey() {
    return contextTitleKeyFor(this.router.currentRouteName);
  }

  @action
  toggleLeft() {
    this.leftSidebarOpen = !this.leftSidebarOpen;
  }

  @action
  closeLeftSidebar() {
    this.leftSidebarOpen = false;
  }
}
