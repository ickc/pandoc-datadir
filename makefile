.PHONY: install filters csl diff
install: filters csl

filters: filters/multiple-bibliographies.lua
csl: csl/chicago-annotated-bibliography.csl csl/apa-6th-edition.csl csl/chicago-author-date.csl

filters/multiple-bibliographies.lua:
	mkdir -p $(@D)
	rm -f $@
	cd $(@D); wget https://github.com/pandoc/lua-filters/raw/master/multiple-bibliographies/multiple-bibliographies.lua
	chmod +x $@

csl/chicago-annotated-bibliography.csl:
	mkdir -p $(@D)
	rm -f $@
	cd $(@D); wget https://github.com/citation-style-language/styles/raw/master/chicago-annotated-bibliography.csl
csl/apa-6th-edition.csl:
	mkdir -p $(@D)
	rm -f $@
	cd $(@D); wget https://github.com/citation-style-language/styles/raw/master/apa-6th-edition.csl
csl/chicago-author-date.csl:
	mkdir -p $(@D)
	rm -f $@
	cd $(@D); wget https://github.com/citation-style-language/styles/raw/master/chicago-author-date.csl

diff:
	difft csl/apa-6th-edition.csl csl/apa-6th-edition-custom.csl
