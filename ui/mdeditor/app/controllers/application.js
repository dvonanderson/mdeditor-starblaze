import Controller from '@ember/controller';
import { action } from '@ember/object';
import { tracked } from '@glimmer/tracking';

export default class ApplicationController extends Controller {
    @tracked leftSidebarOpen = true;

    @action
    toggleLeft() {
        this.leftSidebarOpen = !this.leftSidebarOpen;
    }
}
