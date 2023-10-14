# docker pull mariadb:jammy
# docker pull phpmyadmin:5.2.0-apach

# docker volume create world-db
# docker network create world-app

docker container run `
-dp 3307:3306 `
--name world-db `
--env MARIADB_USER=fjmedina `
--env MARIADB_PASSWORD=12345678 `
--env MARIADB_ROOT_PASSWORD=1234567890 `
--env MARIADB_DATABASE=world-db `
--volume world-db:/var/lib/mysql `
--network world-app `
mariadb:jammy

docker container run `
-dp 90:80 `
--name phpmyadmin `
-e PMA_ARBITRARY=1 `
--network world-app `
phpmyadmin:5.2.0-apache

# docker network connect world-app 6cd
# docker network connect world-app 8aa
# docker network inspect world-app