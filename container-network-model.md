# Container Network Model
https://github.com/docker/libnetwork/blob/master/docs/design.md

## Docker Network
O gerenciamento de rede no Docker é feito pela biblioteca libnetwork, que por sua vez implementa do CNM (Conatainer Network Model)

- Container Network Model - https://github.com/docker/libnetwork/blob/master/docs/design.md

Libnetwork inclui os seguintes pacotes de drives:
- null
- bridge
- overlay
- remote

```sh
# Criar rede com dirve bridge
docker network create -d bridge --subnet 10.0.0.1/24 ps-bridge

# Cria dois container na rede "ps-bridge"
docker run -dt --name c1 --network ps-bridge alpine sleep 1d
docker run -dt --name c2 --network ps-bridge alpine sleep 1d

# Inspecionar docker network
docker network inspect ps-bridge
```
