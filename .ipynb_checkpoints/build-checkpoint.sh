#!/bin/bash

rm -rf ./_build
jupyter-book build ./
cp spm152.html _build/html/spm152.html
git add -A
git commit -m 'updates'
git push
ghp-import -n -p -f _build/html
