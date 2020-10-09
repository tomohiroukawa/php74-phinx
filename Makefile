.PHONY: build

DOCKER_COMMON := docker run \
	 --rm \
	 -v $(PWD)/src:/app \
	 -w /app \
	 -it tomohiroukawa/php74-phinx:latest

build:
	docker build -t tomohiroukawa/php74-phinx:latest .

init:
	$(DOCKER_COMMON) init

migrate:
	$(DOCKER_COMMON) migrate

rollback:
	$(DOCKER_COMMON) rollback

create:
	$(DOCKER_COMMON) create ${NAME}

up:
	docker-compose up -d

down:
	docker-compose down

