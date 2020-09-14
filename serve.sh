#!/bin/bash
cd <project>
python3 -m venv env
source env/bin/activate
pip3 install mkdocs-material
pip3 install mkdocs-versioning
mkdocs build
mkdocs serve
