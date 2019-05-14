
container_name_base=centos-dev-base
name_base=fenggeorgeyu/${container_name_base}
path_base=base



all:

# base image
build-base:
	docker build -t ${name_base} ${path_base}

push-base:
	docker push ${name_base}

clean-base:
	docker rmi ${name_base}

run-base:
	docker run -it --rm --name ${container_name_base} --entrypoint=/bin/bash -v $$(pwd)/shared:/shared ${name_base}

# jdk image

container_name_jdk=centos-dev-jdk
name_jdk=fenggeorgeyu/${container_name_jdk}
path_jdk=jdk

build-jdk:
	docker build -t ${name_jdk} ${path_jdk}

push-jdk:
	docker push ${name_jdk}

clean-jdk:
	docker rmi ${name_jdk}

run-jdk:
	docker run -it --rm --name ${container_name_jdk} --entrypoint=/bin/bash -v $$(pwd)/shared:/shared ${name_jdk}


commit:
	git add -u
	git add .
	git commit -am 'make commit'
	git push

