.PHONY: install filters csl diff
install: filters csl

filters: filters/multiple-bibliographies.lua
csl: \
	csl/apa-6th-edition.csl \
	csl/chicago-annotated-bibliography.csl \
	csl/chicago-author-date.csl \
	csl/chicago-fullnote-bibliography.csl \
	csl/the-astrophysical-journal.csl

filters/multiple-bibliographies.lua:
	mkdir -p $(@D)
	rm -f $@
	cd $(@D); wget https://raw.githubusercontent.com/pandoc/lua-filters/master/multiple-bibliographies/multiple-bibliographies.lua
	chmod +x $@

csl/%.csl:
	mkdir -p $(@D)
	rm -f $@
	cd $(@D); wget https://raw.githubusercontent.com/citation-style-language/styles/master/$*.csl

diff:
	difft csl/apa-6th-edition.csl csl/apa-6th-edition-custom.csl
