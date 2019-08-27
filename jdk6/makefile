
tag=jdk:6
image_name=centos-dev
name=fenggeorgeyu/${image_name}:${tag}

all: build 

build:
	docker build ${name} .

push:
	docker push ${name}

clean:
	docker rmi ${name}



