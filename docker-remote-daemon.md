# Acessando um docker daemon remoto

```sh
# Docker daemon remoto
$ systemctl stop docker 

$ /usr/bin/dockerd -H 0.0.0.0:2375

# Docker daemon local
$ docker -H tcp://IP ps -a
```
