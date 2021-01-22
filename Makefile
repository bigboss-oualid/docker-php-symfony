.PHONY = all build publish update

all: build

update:
	./update.sh

build:
	$(update)
	docker build -t bigbosss/symfony-docker-ci:8.0 -t bigbosss/symfony-docker-ci:latest 8.0
	docker build -t bigbosss/symfony-docker-ci:8.0-symfony 8.0-symfony
	docker build -t bigbosss/symfony-docker-ci:7.4 7.4
	docker build -t bigbosss/symfony-docker-ci:7.4-symfony 7.4-symfony
	docker build -t bigbosss/symfony-docker-ci:7.3 7.3
	docker build -t bigbosss/symfony-docker-ci:7.3-symfony 7.3-symfony
	docker build -t bigbosss/symfony-docker-ci:7.2 7.2
	docker build -t bigbosss/symfony-docker-ci:7.2-symfony 7.2-symfony
	docker build -t bigbosss/symfony-docker-ci:7.1 7.1
	docker build -t bigbosss/symfony-docker-ci:7.1-symfony 7.1-symfony
	docker build -t bigbosss/symfony-docker-ci:5.6 5.6

publish:
	docker push bigbosss/symfony-docker-ci
