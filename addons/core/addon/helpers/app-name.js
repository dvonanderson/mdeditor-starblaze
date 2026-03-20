import { helper } from '@ember/component/helper';
import { getOwner } from '@ember/application';

export default helper(function appName(positional /*, named*/) {
  const config = getOwner(this).resolveRegistration('config:environment');
  return config.appName;
});
