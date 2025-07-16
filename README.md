# CBS HPC & Data Science Documentation (MkDocs)

This repository contains the MkDocs project that builds and manages the public-facing documentation site for [HPC & Data Science Support at CBS](https://cbs-hpc.github.io).

- Source repository: `CBS-HPC/mkdocs`
- Deployment target: [`CBS-HPC/CBS-HPC.github.io`](https://github.com/CBS-HPC/CBS-HPC.github.io)
- Theme: [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)

## Requirements

- Python 3.9+
- pip or conda/mamba
- Git (with submodule support)
- MkDocs and required plugins (see below)

## Getting Started

### Clone the repository (with submodules)

```bash
git clone --recurse-submodules https://github.com/CBS-HPC/mkdocs.git
cd mkdocs
```

### Create and activate a virtual environment
With [uv](https://github.com/astral-sh/uv) (recommended for speed and reproducibility):

```bash
uv init
uv venv
uv add -r requirements.txt
```

With pip:

```bash
python -m venv .venv
source .venv/bin/activate   # On Windows: .venv\Scripts\activate
pip install -r requirements.txt
```

If Python 3.9+ is not installed use conda:

```bash
conda env create -f environment.yml
conda activate mkdocs-cbs
```

## Preview the site locally

```bash
mkdocs serve
```

Then visit: [http://127.0.0.1:8000](http://127.0.0.1:8000) in your browser.

## Build the static site

```bash
mkdocs build
```

The output will be placed in the `site/` directory.

## Deployment to GitHub Pages (organization repo)

This site is deployed to a **separate GitHub Pages repository**: `CBS-HPC.github.io`.  
You can deploy manually using the `gh-deploy` command.

### Example: Manual deployment (Windows)

```bash
cd "your\path\CBS-HPC.github.io"

mkdocs gh-deploy --config-file "your\path\mkdocs\mkdocs.yml" --remote-branch main

cd "your\path\mkdocs"
```

Make sure the `gh-pages` target repo is checked out on the correct branch (`main` in this case) before deploying.

## Project layout

```
.
├── docs/                  # Markdown source files
├── site/                  # Generated site output (do not edit manually)
├── stylesheets/           # Custom CSS
├── .github/workflows/     # GitHub Actions config
├── main.py                # Custom Python macros
├── mkdocs.yml             # MkDocs configuration
├── environment.yml        # Conda environment spec
├── requirements.txt       # pip dependencies
├── .gitmodules            # Git submodule config
└── README.md              # This file
```

## Plugins and extensions

Enabled via `mkdocs.yml`:

- `material`
- `search`
- `mkdocstrings`

Optional (currently commented):

- `macros`
- `awesome-pages`
- `git-revision-date`
- `pdf-export`

## Updating Git submodules

This repo uses Git submodules to include external documentation.

```bash
git submodule update --remote
```

## License

- Documentation: [Creative Commons Attribution 4.0 (CC BY 4.0)](LICENSE)
- Code: [MIT License](LICENSE)

## Contact

- Email: [rdm@cbs.dk](mailto:rdm@cbs.dk)
- Maintainers:
  - Kristoffer Gulmark Poulsen ([kgp.lib@cbs.dk](mailto:kgp.lib@cbs.dk))
  - Lars Nondal ([ln.lib@cbs.dk](mailto:ln.lib@cbs.dk))

## Live Site

Visit: https://cbs-hpc.github.io
