# Docker Compose

```sh
docker run --name wordpress -p 8080:80 --link wordpress-mysql:mysql

docker exec wordpress cat /etc/hosts

docker exec wordpress env
```
