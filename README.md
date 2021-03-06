Docker compose for KMITL Big Data Analytics class

## How to start `PostgreSQL`

### Start container

#### For `Makefile` user

```sh
make up/postgresql
```

#### For `Docker` user 

```sh
docker-compose -f resources/docker/docker-compose.yaml up -d rdbms
```

### After Start container

You will see [PostgreSQL](https://www.postgresql.org/) running at `port=5432`

For access the database you can use [pgAdmin](http://localhost:8080) or [DBeaver](https://dbeaver.io/) or whatever you like and use setting config below for connect the database

```sh
Host: localhost
Port: 5432
User: postgres
Password: secret
Database name: bigdata
```

#### For `pgAdmin` user

Input username = `admin@pgadmin.org` and password:`1234` then setup config [example](https://docs.bitnami.com/installer/apps/canvaslms/administration/configure-pgadmin/) by using config below

```sh
Name: bigdata
Hostname/address: db
Port: 5432
Maintenance: bigdata
Username: postgres
Password: secret
```

## How to start `MongoDB`
### start container
#### For `Makefile` user

```sh
make up/mongo
```

And enjoys

#### For `Docker` user

```sh
docker-compose -f resources/docker/docker-compose.yaml up -d nosql
docker exec -it bigdata-nosql bash
```

### After start container

```sh
mongo -u root -p 1234
```
