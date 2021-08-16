HEAD_PATH=.git/$(shell cat .git/HEAD | cut -d' ' -f2)

latexrun: \
		latexrun.m4 \
		LICENSE \
		Makefile \
		$(HEAD_PATH)
	m4 -D "HEAD_PATH=$(HEAD_PATH)" $< > $@
	chmod +x $@

.PHONY: clean
clean:
	rm -f latexrun
