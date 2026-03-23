import { config } from '@fortawesome/fontawesome-svg-core';
import '@fortawesome/fontawesome-svg-core/styles.css';

// Recommended for Ember (avoids icon size jump; required for FastBoot builds).
config.autoAddCss = false;

export function initialize() {}

export default {
  name: 'md-font-awesome',
  initialize,
};
