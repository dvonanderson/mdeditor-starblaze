import { defineConfig } from 'vitepress';

// GitHub project Pages: set env VITEPRESS_BASE to "/<repo-name>/" when building for deploy (see workflow YAML).
const base = process.env.VITEPRESS_BASE ?? '/';

const overviewSidebar = [
  {
    text: 'Overview',
    items: [
      { text: 'Monorepo structure', link: '/overview/monorepo-structure' },
      { text: 'Developer setup', link: '/overview/developer-setup' },
      { text: 'Publishing the handbook', link: '/overview/publishing-docs' },
    ],
  },
];

const appsSidebar = [
  {
    text: 'Applications',
    items: [{ text: 'MdEditor (main app)', link: '/apps/mdeditor' }],
  },
];

const addonsSidebar = [
  {
    text: 'Addons',
    items: [
      { text: 'Core (shared logic)', link: '/addons/core' },
      { text: 'Md (UI kit)', link: '/addons/md/' },
    ],
  },
];

const mdAddonGuide = [
  {
    text: 'Md UI addon — guide',
    items: [
      { text: 'What is the md addon?', link: '/addons/md/' },
      { text: 'Layout & application shell', link: '/addons/md/layout-and-shell' },
      { text: 'Styles & Bootstrap', link: '/addons/md/styles-and-bootstrap' },
    ],
  },
];

const mdComponents = [
  {
    text: 'Md UI addon — components',
    items: [{ text: 'Overview', link: '/addons/md/components/' }],
  },
  {
    text: 'Layout & chrome',
    items: [
      { text: 'App shell', link: '/addons/md/components/app-shell' },
      { text: 'Primary navigation', link: '/addons/md/components/primary-nav' },
      { text: 'Context title bar', link: '/addons/md/components/context-title-bar' },
      { text: 'Sidebar brand', link: '/addons/md/components/sidebar-brand' },
      { text: 'Sidebar navigation', link: '/addons/md/components/sidebar-nav' },
    ],
  },
  {
    text: 'Content',
    items: [{ text: 'Card', link: '/addons/md/components/card' }],
  },
];

export default defineConfig({
  title: 'MdEditor handbook',
  description:
    'Plain-language documentation for the MdEditor monorepo: main app, core and md addons, and how they fit together.',
  base,
  cleanUrls: false,
  themeConfig: {
    nav: [
      { text: 'Home', link: '/' },
      {
        text: 'Monorepo',
        items: [
          { text: 'Structure', link: '/overview/monorepo-structure' },
          { text: 'MdEditor app', link: '/apps/mdeditor' },
          { text: 'Core addon', link: '/addons/core' },
          { text: 'Md UI addon', link: '/addons/md/' },
        ],
      },
      { text: 'Md components', link: '/addons/md/components/' },
      { text: 'Developers', link: '/overview/developer-setup' },
    ],
    sidebar: {
      '/overview/': [...overviewSidebar],
      '/apps/': [...appsSidebar, ...overviewSidebar],
      '/addons/core': [...addonsSidebar, ...overviewSidebar],
      '/addons/md/components/': [...mdComponents, ...mdAddonGuide, ...overviewSidebar],
      '/addons/md/': [...mdAddonGuide, ...mdComponents, ...overviewSidebar],
    },
    footer: {
      message: 'ADIWG — MdEditor',
    },
    search: {
      provider: 'local',
    },
  },
});
