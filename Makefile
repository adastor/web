.PHONY: all index.html index.pl.html

all: index.html index.pl.html

index.html: .index.md .filter.sed
	cat .index.md | markdown_py | sed -f .filter.sed > index.html

index.pl.html: .index.pl.md .filter.sed
	cat .index.pl.md | markdown_py | sed -f .filter.sed > index.pl.html

publish: index.html license.txt index.pl.html
	ipfs add -w license.txt index*.html style.css script.js
