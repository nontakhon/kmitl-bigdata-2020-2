DOCKER_COMPOSE_FILE := -f resources/docker/docker-compose.yaml

up/postgresql: down
	docker-compose ${DOCKER_COMPOSE_FILE} up 

up/mongo: down
	docker-compose ${DOCKER_COMPOSE_FILE} up -d nosql
	docker exec -it bigdata-nosql bash

up/all: down
	docker-compose ${DOCKER_COMPOSE_FILE} up rdbms nosql

reset/all: down
	sudo rm -rf ./resources/docker/postgresql/data
	sudo rm -rf ./resources/docker/mongodb/data

down:
	docker-compose ${DOCKER_COMPOSE_FILE} down --remove-orphans

logs:
	docker-compose ${DOCKER_COMPOSE_FILE} logs -f

