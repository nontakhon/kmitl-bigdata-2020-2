DOCKER_COMPOSE_FILE := -f resources/docker/docker-compose.yaml

up: down
	docker-compose ${DOCKER_COMPOSE_FILE} up 

up/db: down
	docker-compose ${DOCKER_COMPOSE_FILE} up rdbms nosql

up/reset: down
	sudo rm -rf ./resources/docker/postgresql/data
	sudo rm -rf ./resources/docker/mongodb/data

down:
	docker-compose ${DOCKER_COMPOSE_FILE} down --remove-orphans

logs:
	docker-compose ${DOCKER_COMPOSE_FILE} logs -f

exec/mongo: down
	docker-compose ${DOCKER_COMPOSE_FILE} up -d nosql
	docker exec -it bigdata-nosql bash