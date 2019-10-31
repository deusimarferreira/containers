# Storage

# Storage Driver in Docker

```sh
docker info

# ...
# Storage Driver: overlay2
# ...

# List volumes
docker volume list
```

```sh
docker run -i -v /data --name cvol alpine sh

# Inspect volume
docker inspect cvol | less

# Create volume
docker volume create --name myvol

# use volume
docker ru -i -t- v myvol:/data --name cmyvol apline sh

# Remove volume
docker rm -f -v cvol

dockerr run -it -v /mnt/shared:/data alpine sh
```
