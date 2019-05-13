
container_name=centos-dev
name=fenggeorgeyu/${container_name}
docker_file_base=Dockerfile

all:

build:
	docker build -t ${name} -f ${docker_file_base} .

clean:
	docker rmi ${name}

push:
	docker push ${name}

run:
	docker run -it --rm --name ${container_name} --entrypoint=/bin/bash -v $$(pwd)/shared:/shared ${name}

stop:
	docker-compose stop

delete:
	docker-compose down

delete-all:
	docker-compose down -v

commit:
	git add -u
	git add .
	git commit -am 'make commit'
	git push

