
image_name=fenggeorgeyu/centos-dev

SUBDIRS = $(shell ls -d */ | grep -v 'shared' )

all: build

% :
	for dir in $(SUBDIRS) ; do \
	    make -C  $$dir $@ ; \
    done
	
clean:
	docker rmi $$(docker images | grep ${image_name} | tr -s ' ' | cut -d ' ' -f 3)

commit:
	git add -u
	git add .
	git commit -am 'make commit'
	git push

