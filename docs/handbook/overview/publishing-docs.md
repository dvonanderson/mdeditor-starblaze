# Publishing this handbook (e.g. GitHub Pages)

The folder **`docs/handbook`** is a **VitePress** site: Markdown → static HTML.

## Edit locally

From the **monorepo root** (with Node 20+ and pnpm):

```bash
pnpm install
pnpm docs:dev
```

Open the URL VitePress prints (usually `http://localhost:5173`).

## Build locally

```bash
pnpm docs:build
```

Output directory: **`docs/handbook/.vitepress/dist`**.

## GitHub Pages — base path

If the site is served at **`https://<org>.github.io/<repository>/`**, the VitePress **`base`** must be **`/<repository>/`** (trailing slash).

The included **GitHub Actions** workflow sets **`VITEPRESS_BASE`** to your repository’s GitHub Pages path (repo name as the first path segment) when building for deploy. For a **project root** URL or custom domain, change that workflow or build with `VITEPRESS_BASE=/`.

## Automated deploy

Workflow file: **`.github/workflows/deploy-handbook.yml`**

- Runs on **push to `main`** when files under `docs/handbook/` change (or manually via **workflow_dispatch**).
- Builds the site and publishes the **`dist`** folder to the **`gh-pages`** branch.

**Repository settings:** enable **Pages** from the **`gh-pages`** branch (or follow the workflow’s suggested “GitHub Actions” Pages source if you switch to `actions/deploy-pages` later).
