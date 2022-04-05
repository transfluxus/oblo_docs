#!/bin/bash
mkdocs build
cd site
git add -A
git commit -m "Update site"
git push