docker network create postgres-net
docker volume create postgres-db

docker container run `
-d `
--name postgres-db `
-e POSTGRES_PASSWORD=123456 `
-v postgres-db:/var/lib/postgresql/data `
--network postgres-net `
postgres:15.1

docker container run `
--name pgAdmin `
-e PGADMIN_DEFAULT_PASSWORD=123456 `
-e PGADMIN_DEFAULT_EMAIL=superman@google.com `
--network postgres-net `
-dp 90:80 `
dpage/pgadmin4:6.17

