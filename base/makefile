
tag=base
image_name=centos-dev
name=fenggeorgeyu/${image_name}:${tag}

all: build bush

build:
	docker build -t ${name} .
docker tag ${name} fenggeorgeyu/${image_name}:latest

push:
	docker push ${name}

clean:
	docker rmi ${name}



