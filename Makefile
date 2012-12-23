VERSION := $(shell perl -MExtUtils::MakeMaker -le 'print MM->parse_version(shift)' tb)

.PHONY: README.md

all: README.md

README.md: tb
	pod2text tb | perl -e '$$_=join("",<>); s/(.*```).*(```.*)/"$$1\n" . join("", <STDIN>) . $$2/es; print;' README.md >README.md.tmp
	mv README.md.tmp README.md
	git add README.md
	git commit -m 'Auto update from POD'

version:
	echo "VERSION IS $(VERSION)"
