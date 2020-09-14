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

2. Add `overrides` and `images` folder prerequisites. Note: these are our baseline configurations for an MkDocs project contianing standard `footer.html`, logo, favicon. 

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

```

4. Add your documentation conent to the `docs` folder as normal.
