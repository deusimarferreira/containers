# Docker APIs

Management containers by API, view exemples in https://docs.docker.com/develop/sdk/examples/

History API versions https://docs.docker.com/engine/api/version-history/

--> daemon remote
http://IP:2375/info

```sh
 curl -XGET http://167.99.56.157:2375/images/json | jq
 ```
 
 ```sh
 curl -XPOST http://167.99.56.157:2375/containers/create\?name\=mynginx \
      -H "Content-type: application/json" \
      -d '{"Image": "nginx:alpine"}'
      
      
 curl -XPOST http://167.99.56.157:2375/containers/c8e74f52421c/start
 
 curl -XGET http://167.99.56.157:2375/containers/json | jq
 ```

## Go and Python
https://docs.docker.com/develop/sdk/#install-the-sdks

## Java
https://github.com/docker-java/docker-java

## Kotlin
https://github.com/gesellix/docker-client
