# cmjc.github.io

Test repo for publishing versioned docs using mkdocs-versioning plug in.

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
