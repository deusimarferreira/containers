# Docker Machine

Linux
```sh
$ base=https://github.com/docker/machine/releases/download/v0.16.0 &&
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
  sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&
  chmod +x /usr/local/bin/docker-machine
```

[Install Docker Machine](https://docs.docker.com/machine/install-machine/)

## Criando uma nova maquina docker

```bash
$ export OCEAN_TOKEN=? # Get on https://cloud.digitalocean.com/account/api/tokens

$ docker-machine create --driver digitalocean --digitalocean-access-token=$OCEAN_TOKEN demo

$ docker-machine env demo
```
