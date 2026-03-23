# MdEditor UI Monorepo

![](mdeditor.png)

![Validate Monorepo](https://github.com/dvonanderson/mdeditor-starblaze/workflows/Validate%20Monorepo/badge.svg)

This monorepo contains multiple projects, including UIs and addons, used by
MdEditor.

This top-level repository provides limited common tasks, such as installation
and commit assistance.  However, most tasks must be executed from within a
subproject, e.g. running or testing.


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Projects](#projects)
  - [Core (addons/core):](#core-addonscore)
  - [Md (addons/md)](#md-addonsmd)
  - [MdEditor (ui/mdeditor)](#mdeditor-uimdeditor)
- [Prerequisites](#prerequisites)
- [Optional Tooling](#optional-tooling)
- [Installation](#installation)
- [Pnpm Commands](#pnpm-commands)
- [Contributing](#contributing)
  - [Branching](#branching)
  - [Building ToC](#building-toc)
  - [Building MdEditor UI for Production](#building-mdeditor-ui-for-production)
    - [Building with a Container](#building-with-a-container)
  - [Committing](#committing)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Projects

This monorepo contains multiple projects.
### Core (addons/core):
Core features use by MdEditors UI's, i.e i18n, helpers or components. [Project Readme](addons/core).

### Md (addons/md)
Common styles and components shared by MdEditor UIs. [Project Readme](addons/md).

### MdEditor (ui/mdeditor)
The UI for MdEditor. [Project Readme](ui/mdeditor).

## Prerequisites

You will need the following things properly installed on your computer.

* [Git][git]
* [Node.js][node]
  * Supported versions: `v20` and `v22`.
* [Pnpm][pnpm] installed globally
* [Google Chrome][chrome]
* [Firefox][firefox]


## Optional Tooling

Our team finds the following applications useful in day-to-day development
workflows.  These are merely recommendations.  We encourage you to use the tools
that best suit you and your personal style.

* [VS Code][vscode]: Code editor for building and debugging web applications
* [Warp][warp]:  Terminal application for macOS
* [Homebrew][homebrew]:  The missing package manager for macOS and Linux
* [Ember Inspector][ember-inspector]:  Understand and debug Ember applications
* [Postman][postman]:  Test and inspect APIs


## Installation

* `git clone <repository-url>` this repository
* `cd boundary-ui`
* `pnpm install`

## Pnpm Commands

List of available project commands.  `pnpm run <command-name>`

| Command             | Description |
|---------------------|---|
| build               | Builds Admin UI for production. |
| test                | Runs tests in CI mode. |
| lint                | Runs ember-template-lint on all of the hbs, js, and sass files. |
| compliance:audit    | Checks for issues using `pnpm audit` with moderate and above criticality.|
| doc:toc             | Automatically generates a table of contents for the README file. |

## Contributing

### Branching

We follow [GitHub Flow][github-flow].

### Building ToC

To autogenerate a ToC (table of contents) for this README,
run `pnpm doc:toc`.  Please update the ToC whenever editing the structure
of README.

### Building MdEditor UI for Production

See [MdEditor UI README](ui/mdeditor/README.md#building-for-production) for more information on how to
build the MdEditor UI for production.  Be sure to set build-related environment variables as
necessary for your target environment, as described in the [Environment Variables](ui/mdeditor/README.md#environment-variables) section of README.

To quickly produce a production build of MdEditor UI, run from this folder:

```bash
pnpm install
pnpm build
```

Assets are saved to `ui/mdeditor/dist/`.

#### Building with a Container

Optionally, you may build the UI within a container.  Execute the following command:

```bash
docker-compose -f docker-compose-embedding.yml run build
```

Assets are saved to `ui/mdeditor/dist/`.


### Committing

We use `husky` and `lint-staged` to ensure linting and other checks pass before a
commit is completed. Simply do a `pnpm install` to make sure the hooks are installed.

Use a normal `git commit` to go through the checks, if you need to skip these checks,
use `git commit --no-verify` to bypass them. However, a consistent commit message will
still be enforced even if you use `--no-verify`

[github-flow]: https://guides.github.com/introduction/flow/

[git]: https://git-scm.com/
[node]: https://nodejs.org/
[pnpm]: https://pnpm.io
[chrome]: https://google.com/chrome/
[firefox]: https://firefox.com/
[pnpm-workspaces]: https://pnpm.io/workspaces
[homebrew]: https://brew.sh
[warp]: https://www.warp.dev
[vscode]: https://code.visualstudio.com/
[ember-inspector]: https://guides.emberjs.com/release/ember-inspector/
[postman]: https://www.postman.com/downloads/
