all: index.html index.txt

index.html: index.7
	roff2html $^ > $@

index.txt: index.7
	MANWIDTH=72 man -l $^ > $@

clean:
	rm -f index.html index.txt
