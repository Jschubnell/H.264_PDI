
EXTENSIONS=toc,abbr,extra,codehilite,tables,wikilinks,meta,headerid,sane_lists

all: apresentacao.md
	@landslide apresentacao.md -m -d h265.html --relative --copy-theme -x $(EXTENSIONS)

clean:
	rm *.html

.SILENCE: