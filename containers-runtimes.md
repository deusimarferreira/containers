# Contêineres Runtimes

## runC
https://github.com/opencontainers/runc#building

```sh
# Cria e exporta imagem docker para /tmp/busybox.tar
docker export $(docker create busybox) > /tmp/busybox.tar

# Cria pastas que serão usadas para executar o runc
mkdir ~/myrunccontainer
mkdir ~/myrunccontainer/rootfs

# Descompacta /tmp/busybox.tar
tar -C ~/myrunccontainer/rootfs -xf /tmp/busybox.tar
```

```sh
cd ~/myrunccontainer/

runc spec
vim config.json

runc run busybox
```

## Docker

Requer root prívilegios para executar ``docker-intall.sh``

```bash
# sh  docker-intall.sh
```

[Docker Engine Overview](https://docs.docker.com/engine/docker-overview/)

[Docker Engine runc (OCI)](https://blog.docker.com/2016/04/docker-engine-1-11-runc/)

## rkt
Lançado em 2014 por CoreOS

Como instalar o rkt?

```sh
# Clone código fonte a partir do repositório GitHub
$ git clone https://github.com/coreos/rkt

$ cd rkt

# Execute o script para realizar a instalação
$ ./scripts/install-rkt.sh
  ```
  
  [Rkt Architecture](https://rocket.readthedocs.io/en/stable/Documentation/devel/architecture/)
  [Docs](https://rocket.readthedocs.io/en/stable/Documentation/app-container/)
  [Roadmap](https://github.com/rkt/rkt/projects)
