# cmjc.github.io

Test repo for publishing versioned docs using mkdocs-versioning plug in.

#### Prerequisites
- GitHub setup. Documentation source repo has been set up with a `develop` branch rather than `master` set to default.
- Tooling:
	- Python3. [python.org](https://www.python.org/downloads/release)
	- MkDocs. [docs](https://www.mkdocs.org), [repo](https://github.com/mkdocs/mkdocs/)
	- mkdocs-material theme. [docs](https://squidfunk.github.io/mkdocs-material/), [repo](https://github.com/squidfunk/mkdocs-material)
	- mkdocs-versioning plugin v0.3.0.  [docs](https://zayd62.github.io/mkdocs-versioning/0.3.0/), [repo](https://github.com/zayd62/mkdocs-versioning/), [project page on pypi.org](https://pypi.org/project/mkdocs-versioning/)

1. Create new mkdocs project. `mkdocs new <project>`. Giving a directory structure of:

```
<project>
	mkdocs.yml
		docs/
		index.md
```

2. Add `overrides` and `images` folder prerequisites for usage of the material theme. Note: these contain a standard footer, logo, and favicon. 

```
<project>
	mkdocs.yml
	docs/
		index.md
		images/
	overrides/

```

3. Configure `mkdocs.yaml` to your chosen mkdocs theme and add in mkdocs-versioning plugin. The `yaml` file should look like this:

```
site_name: My Docs

nav:
  - Home: "index.md"
  - Circle: "circle.md"
  - Triangle: "triangle.md"
  - Quadrilateral: "quadrilateral.md"
  - Version Selector: "../"

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

4. Add your documentation content to the `docs` folder as normal.
