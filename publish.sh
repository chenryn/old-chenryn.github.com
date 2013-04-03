for i in `find ./_site/ -type f -name '*.html'`;do sed -i '/^\s*$/d' $i;done
git add .
git commit -am 'new post'
git push
cp -r _site/* chenryn.github.com/
cd chenryn.github.com
git add .
git commit -am 'new post'
git push
