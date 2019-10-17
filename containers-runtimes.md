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

# Executa container
runc run busybox

# Lista containers
runc list

# Para container
runc pause busybox
runc list

# Run container
runc resume busybox
runc list

# Estado
runc state busybox

# Ajuda
runc --help # All commands options
runc delete --help # All options for delete

# Removendo container
runc delete -f busybox
```

## Docker

Requer root prívilegios para executar ``docker-intall.sh``

```sh
# sh docker-intall.sh
```

[Docker Engine Overview](https://docs.docker.com/engine/docker-overview/)

[Docker Engine runc (OCI)](https://blog.docker.com/2016/04/docker-engine-1-11-runc/)

```sh
# Cria container base Alpine
docker container create -i -t alpine sh

# Inicia container
docker container start CONTAINER

# Lista containers
docker container ls

docker container run -i -t alpine sh

# Run container em background
docker container run -d alpine ...

# Inspecionar container
docker container inspect CONTAINER less
```

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
