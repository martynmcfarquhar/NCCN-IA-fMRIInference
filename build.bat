Remove-Item -Force -Recurse -Path .\_build
jupyter-book build .\
copy spm152.html _build\html\spm152.html
git add -A
git commit -m 'updates'
git push
ghp-import -n -p -f _build/html