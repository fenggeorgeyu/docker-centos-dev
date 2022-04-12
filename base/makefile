
tag=base
image_name=centos-dev
name=fenggeorgeyu/${image_name}:${tag}

all: build 

build:
	docker build -t ${name} .
	docker tag ${name} localhost/fenggeorgeyu/${image_name}:latest

push:
	docker push ${name}
	docker push fenggeorgeyu/${image_name}:latest

clean:
	docker rmi ${name}



