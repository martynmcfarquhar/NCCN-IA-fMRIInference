#!/bin/bash

rm -rf ./_build
jupyter-book build ./
cp spm152.html _build/html/spm152.html
cp p-uncorr-001.html _build/html/p-uncorr-001.html
cp p-fdr-05.html _build/html/p-fdr-05.html
cp p-fdr-topo-05.html _build/html/p-fdr-topo-05.html
cp p-fwe-05.html _build/html/p-fwe-05.html
git add -A
git commit -m 'updates'
git push
ghp-import -n -p -f _build/html
