# MDEditor Starblaze ⚡

A modern Markdown editor built with Ember.js, featuring Bootstrap 5 UI, .gjs template components, and a complete CI/CD pipeline.

## Features

✨ **Modern Ember.js** - Built with Ember 6.8 and Glimmer components
📝 **Markdown Editor** - Real-time markdown editing with live preview
🎨 **Bootstrap 5** - Professional, responsive UI with Bootstrap components
🔥 **Template Tag Components** - Modern .gjs/.gts syntax for components
⚡ **Vite/Embroider** - Lightning-fast builds with HMR
🎯 **TypeScript Support** - Full TypeScript integration
🔄 **CI/CD Ready** - GitHub Actions workflows for testing and deployment
🚀 **GitHub Pages** - Automated deployment to GitHub Pages
🎭 **Conventional Commits** - Commitizen and Husky for clean git history
🧪 **Testing** - QUnit test suite

## Prerequisites

You will need the following installed on your computer:

- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) v20 or higher (with npm)
- [Google Chrome](https://google.com/chrome/) (for testing)

## Installation

```bash
git clone <repository-url>
cd mdeditor-starblaze
npm install
```

Husky git hooks will be automatically installed via the `prepare` script.

## Running / Development

Start the development server:

```bash
npm start
```

- Visit your app at [http://localhost:4200](http://localhost:4200)
- Visit your tests at [http://localhost:4200/tests](http://localhost:4200/tests)

## Available Scripts

### Development

```bash
npm start              # Start dev server with HMR
npm test              # Run test suite
```

### Linting

```bash
npm run lint          # Run all linters
npm run lint:js       # Lint JavaScript/TypeScript
npm run lint:hbs      # Lint Ember templates
npm run lint:css      # Lint CSS
npm run lint:format   # Check code formatting
npm run lint:types    # Run TypeScript type checking
npm run lint:fix      # Auto-fix all linting issues
```

### Building

```bash
npm run build              # Production build
npm run build:gh-pages     # Build for GitHub Pages deployment
npm run format            # Format code with Prettier
```

### Git Workflow

```bash
npm run commit        # Interactive commit with Commitizen
```

## Project Structure

```
mdeditor-starblaze/
├── app/
│   ├── components/           # .gjs Glimmer components
│   │   ├── counter.gjs
│   │   └── markdown-editor.gjs
│   ├── styles/              # CSS stylesheets
│   │   ├── app.css
│   │   └── components/
│   ├── templates/           # Route templates (.gts)
│   │   ├── application.gts
│   │   ├── editor.gts
│   │   └── demo.gts
│   └── router.ts
├── .github/
│   └── workflows/           # GitHub Actions workflows
│       ├── ci.yml
│       └── deploy-gh-pages.yml
├── .husky/                  # Git hooks
│   ├── pre-commit
│   └── commit-msg
├── tests/                   # QUnit tests
└── public/                  # Static assets
```

## Key Technologies

- **Ember.js 6.8** - Modern web framework
- **Glimmer Components** - Fast, lightweight components
- **Template Tag Syntax** - .gjs/.gts files for colocation
- **Bootstrap 5** - UI component library
- **Bootstrap Icons** - Icon font library
- **Vite** - Next-generation build tool
- **Embroider** - Modern Ember build system
- **TypeScript** - Type-safe development
- **Husky** - Git hooks for code quality
- **Commitizen** - Conventional commit messages
- **lint-staged** - Run linters on staged files
- **GitHub Actions** - CI/CD automation

## Git Workflow

This project uses **conventional commits** and **git hooks** to maintain code quality.

### Making Commits

Use Commitizen for guided commits:

```bash
npm run commit
```

This will prompt you for:

- Type of change (feat, fix, docs, etc.)
- Scope (optional)
- Description
- Breaking changes (if any)

### Commit Types

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes
- `refactor`: Code refactoring
- `perf`: Performance improvements
- `test`: Adding/updating tests
- `build`: Build system changes
- `ci`: CI/CD changes
- `chore`: Other changes

### Git Hooks

**Pre-commit Hook:**

- Runs linters on staged files
- Auto-fixes issues when possible
- Formats code with Prettier

**Commit-msg Hook:**

- Validates commit message format
- Ensures conventional commit standards

## CI/CD Pipeline

### Continuous Integration

On every push and pull request:

1. **Lint Job**
   - Lints JavaScript/TypeScript
   - Lints templates
   - Lints CSS
   - Checks formatting
   - Runs type checking

2. **Test Job**
   - Runs test suite
   - Ensures all tests pass

3. **Build Job**
   - Builds production app
   - Uploads artifacts

### GitHub Pages Deployment

Automatically deploys to GitHub Pages on push to `main`/`master`:

1. Builds app with base path
2. Deploys to GitHub Pages
3. Available at: `https://<username>.github.io/mdeditor-starblaze/`

**Enable GitHub Pages:**

1. Go to Settings → Pages
2. Set Source to "GitHub Actions"

## Documentation

- [GJS_SYNTAX_GUIDE.md](./GJS_SYNTAX_GUIDE.md) - Guide to .gjs template tag syntax
- [BOOTSTRAP_INTEGRATION.md](./BOOTSTRAP_INTEGRATION.md) - Bootstrap 5 integration guide
- [STYLESHEET_ORGANIZATION.md](./STYLESHEET_ORGANIZATION.md) - CSS organization strategy
- [CI_CD_GUIDE.md](./CI_CD_GUIDE.md) - Complete CI/CD and git workflow guide

## Code Generators

Generate new code with Ember CLI:

```bash
npx ember generate component my-component
npx ember generate route my-route
npx ember generate service my-service
```

## Testing

Run the test suite:

```bash
npm test
```

Run tests in development mode:

```bash
npm start
# Visit http://localhost:4200/tests
```

## Deployment

### GitHub Pages (Automatic)

Deployment happens automatically via GitHub Actions when you push to `main`/`master`.

### Manual Deployment

Build for production:

```bash
npm run build
```

The built app will be in the `dist/` directory.

## Contributing

1. Create a feature branch: `git checkout -b feat/my-feature`
2. Make your changes
3. Commit using Commitizen: `npm run commit`
4. Push your branch: `git push origin feat/my-feature`
5. Create a Pull Request

The CI pipeline will automatically run tests and linting on your PR.

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)

## Further Reading

- [Ember.js Guide](https://guides.emberjs.com/)
- [Glimmer Components](https://guides.emberjs.com/release/components/)
- [Template Tag Format](https://rfcs.emberjs.com/id/0779-first-class-component-templates)
- [Vite Documentation](https://vite.dev)
- [Bootstrap 5 Documentation](https://getbootstrap.com/docs/5.3/)
- [Conventional Commits](https://www.conventionalcommits.org/)

## Browser Extensions

- [Ember Inspector for Chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
- [Ember Inspector for Firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)

## License

MIT

---

Built with ❤️ using Ember.js and Bootstrap
