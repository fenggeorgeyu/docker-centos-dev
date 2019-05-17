
SUBDIRS = $(shell ls -d */ -Ishared)

all:
	for dir in $(SUBDIRS) ; do \
	     make -C  $$dir ; \
    done

commit:
	git add -u
	git add .
	git commit -am 'make commit'
	git push

