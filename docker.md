# Trabalhando com Docker

## Images
O reposítorio público de imagens para o Docker é [https://hub.docker.com](https://hub.docker.com).

```sh
# Baixa imagem
docker image pull alpine

# Lista imagens existentes
docker image ls

# Inspecionar uma imagem
docker image inspect alpine:latest | less

# Show digests
docker image ls --digests

# Procura imagens
docker search alpine

# Publica image
docker image push image:tag

# ?
rkt fetch --insecure-options=image docker://busybox
```

## Dockfiles
Exemplo [Dockfile](https://github.com/deusimarferreira/maven-node/blob/master/Dockerfile)

```sh
# Help acesse https://docs.docker.com/engine/reference/builder/
docker build -t image:tag .
```

## Container Networking
Leia [container-network-model.md](container-network-model.md)

## Container Storage
## Docker Compose
## Docker APIs
## Tips
