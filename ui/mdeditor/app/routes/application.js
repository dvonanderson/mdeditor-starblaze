import Route from '@ember/routing/route';
import { service } from '@ember/service';

export default class ApplicationRoute extends Route {
  // =services
  @service intl;
  @service router;

  // =methods

  beforeModel() {
    this.intl.setLocale(['en-us']);
  }

  /**
   * Redirects to dashboard index route
   */
  redirect() {
    this.router.transitionTo('dashboard');
  }
}
