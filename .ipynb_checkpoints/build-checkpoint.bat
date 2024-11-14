Remove-Item -Force -Recurse -Path .\_build
jupyter-book build .\
copy spm152.html _build\html\spm152.html
copy p-uncorr-001.html _build\html\p-uncorr-001.html
git add -A
git commit -m 'updates'
git push
ghp-import -n -p -f _build/html