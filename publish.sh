#!/bin/bash
msg=$1
if [[ "x$msg" == "x"  ]];then
    msg="new post"
fi
jekyll build
find _site/ -name "*.html" -type f | xargs gsed -i '/^\s*$/d'
find _site/ -name "*.html" -type f | xargs gsed -i 's!/assets/themes//!/assets/themes/twitter/!'
git add .
git commit -am "$msg"
git push
cp -r _site/* chenryn.github.com/
cd chenryn.github.com
git add .
git commit -am "$msg"
git push
