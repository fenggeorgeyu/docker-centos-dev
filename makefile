
name=fenggeorgeyu/centos-dev

all:

build:
	docker build -t ${name} .

commit:
	git add -u
	git add .
	git commit -am 'make commit'
	git push

