# Docker remote daemon
A seguir são demonstrado como configurar e acessar um ambiente docker

## Configurando o servidor
### Opção 1
```sh
# Docker daemon remoto
$ systemctl stop docker 

$ /usr/bin/dockerd -H 0.0.0.0:2375
```

### Opção 2
```sh
# Docker daemon remoto
$ vim /lib/systemd/system/docker.service

# Change from
ExecStart=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock

# To
ExecStart=/usr/bin/dockerd -H fd:// -H tcp://0.0.0.0:2375 --containerd=/run/containerd/containerd.sock

$ systemctl daemon-reload
$ systemctl restart docker.service

$ systemctl status docker.service
```

# Acessando container remoto

```sh
# Docker daemon local

$ docker -H tcp://IP info

$ docker -H tcp://IP ps -a
```
