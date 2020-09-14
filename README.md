# cmjc.github.io

Test repo for publishing versioned docs using mkdocs-versioning plug in.

## Prerequisites
Tooling:

- Python3. [python.org](https://www.python.org/downloads/release)
- MkDocs. [docs](https://www.mkdocs.org), [repo](https://github.com/mkdocs/mkdocs/)
- mkdocs-material theme. [docs](https://squidfunk.github.io/mkdocs-material/), [repo](https://github.com/squidfunk/mkdocs-material)
- mkdocs-versioning plugin v0.3.0.  [docs](https://zayd62.github.io/mkdocs-versioning/0.3.0/), [repo](https://github.com/zayd62/mkdocs-versioning/), [project page on pypi.org](https://pypi.org/project/mkdocs-versioning/)


## Set up repo and project template

**1**. Create a GitHub repo for your mkdocs project.This source repo should be set up with a `develop` branch rather than `master` set to default. The root of this repo is your 'working area'.

**2**. Create new mkdocs project. `mkdocs new <project>`. Giving a directory structure of:

```
<project>
	mkdocs.yml
		docs/
		index.md
```

**3**. Add `overrides` and `images` folder prerequisites for usage of the material theme. Note: these contain a standard footer, logo, and favicon. 

```
<project>
	mkdocs.yml
	docs/
		index.md
		images/
	overrides/

```

**4**. Configure `mkdocs.yaml` to your chosen mkdocs theme and add in mkdocs-versioning plugin. The `yaml` file should look like this:

```
site_name: My Docs

nav:
  - Home: "index.md"
  - Version Selector: "../"
  - ...

markdown_extensions:
  - pymdownx.highlight:
      use_pygments: true
      linenums: true
  - pymdownx.inlinehilite
  - admonition
  - pymdownx.superfences
  - sane_lists
  - footnotes

plugins:
  - search
  - mkdocs-versioning:
#      version: 0.0.0
#      version_selection_page: "version_selection.md"
#      exclude_from_nav: ["images"]

theme:
  name: material
  custom_dir: overrides
  favicon: images/favicon.png
  logo: 'images/clearmatics-logo.png'
  icon:
    repo: fontawesome/brands/github
  palette:
    primary: white

```

**5**. Add a custom version selection page to the `docs` folder.

```
touch version_selection.md
mv version_selection.md <project>/docs

```
**6**. Add your documentation content to the `docs` folder as normal.

**7**. Build and serve project

Add a custom `serve.sh` script to your working area at the repo root.  It should look like this, `<project>` edited to your project name:

```
#!/bin/bash
cd <project>
python3 -m venv env
source env/bin/activate
pip3 install mkdocs-material
pip3 install mkdocs-versioning
mkdocs build
mkdocs serve

```

## Publish by version

Versioning is managed by the `mkdocs-versioning` plugin. See plugin [Reference docs and tutorials](https://zayd62.github.io/mkdocs-versioning/0.3.0/).

**1**. 