import Service from '@ember/service';
import { tracked } from '@glimmer/tracking';

export default class ThemeService extends Service {
  @tracked currentTheme: 'light' | 'dark' = 'light';

  constructor(properties: object | undefined) {
    super(properties);
    this.loadTheme();
  }

  loadTheme() {
    // Check localStorage first
    const savedTheme = localStorage.getItem('theme') as 'light' | 'dark' | null;

    if (savedTheme) {
      this.currentTheme = savedTheme;
    } else {
      // Check system preference
      const prefersDark = window.matchMedia(
        '(prefers-color-scheme: dark)'
      ).matches;
      this.currentTheme = prefersDark ? 'dark' : 'light';
    }

    this.applyTheme();
  }

  toggleTheme() {
    this.currentTheme = this.currentTheme === 'light' ? 'dark' : 'light';
    this.applyTheme();
    this.saveTheme();
  }

  applyTheme() {
    document.documentElement.setAttribute('data-theme', this.currentTheme);
  }

  saveTheme() {
    localStorage.setItem('theme', this.currentTheme);
  }

  get isDark() {
    return this.currentTheme === 'dark';
  }

  get isLight() {
    return this.currentTheme === 'light';
  }
}

// Don't remove this declaration: this is what enables TypeScript to resolve
// this service using `Owner.lookup('service:theme')`, as well
// as to check when you pass the service name as an argument to the decorator,
// like `@service('theme') declare altName: ThemeService;`.
declare module '@ember/service' {
  interface Registry {
    theme: ThemeService;
  }
}
