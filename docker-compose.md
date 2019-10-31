# Docker Compose

## Instalação
Acesse https://docs.docker.com/compose/install/#install-compose

```sh
docker run --name wordpress -p 8080:80 --link wordpress-mysql:mysql

docker exec wordpress cat /etc/hosts

docker exec wordpress env
```

web -> 172.17.0.3
db -> 172.17.0.2

```
docker rm -f wordpress
```

## Wordpress YML Config
https://docs.docker.com/compose/wordpress/

```sh
mkdir ~/wordpress
cd ~/wordpress

vi docker-compose.yml

docker-compose up
# or
docker-compose -f docker-compose.yml up

docker-compose ps
```
