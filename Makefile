.PHONY: clean backup

all: en pl doc

md_py: /usr/bin/markdown_py

/usr/bin/markdown_py:
	sudo pip3 install Markdown

css: www/css/style.css

js: www/js/script.js

en: www/index.html

pl: www/index-pl.html

license: www/license.txt

www/index.html: index.md filter.sed md_py
	cat index.md | markdown_py | sed -f filter.sed > www/index.html

www/index-pl.html: index-pl.md filter.sed md_py
	cat index-pl.md | markdown_py | sed -f filter.sed > www/index-pl.html

doc: README.md

README.md: index.md readme.sed
	cat index.md | sed -f readme.sed | uniq > README.md

publish: en pl css js license www
	ipfs add -r -w www/index*.html www/license.txt www/js/ www/css/
	touch publish

clean:
	find . -name '*~' | xargs -r rm -v

backup: clean repack
	ipfs add -rHw .

repack:
	git repack -a -d

push:
	git push
