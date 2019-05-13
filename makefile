
container_name=centos-dev
name=fenggeorgeyu/${container_name}
docker_file_base=Dockerfile

all:

build:
	docker build -t ${name} -f ${docker_file_base} .
clean:
	docker rmi ${name}

create:
	# 	docker-compose up -d
	docker run -it --rm --name ${container_name} --entrypoint=/bin/bash -v shared:/shared ${name}

bash:
	docker exec -it ${container_name} bash

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

