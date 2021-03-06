# docker noxbit

## usage

### docker hub

```
docker run -d \
  --name=noxbit \
  -v <path to config>:/config \
  -v <path to vcache>:/vcache \
  -e PGID=<gid> -e PUID=<uid>  \
  -p 6689:6689 \
  lodgnewt/docker-noxbit
```

### github

```
$ git clone https://github.com/lodgnewt/docker-noxbit.git
$ cd docker-noxbit/
$ docker build -t lodgnewt/docker-noxbit .
$ id <dockeruser>
$ docker run -d -e PUID=<uid> -e PGID=<gid> -p 6689:6689 \
-v ../noxbit/config/:/config \
-v ../noxbit/vcache/:/tmp/vcache \
lodgnewt/docker-noxbit
```
## info

* Shell access whilst the container is running: `docker exec -it docker-noxbit /bin/bash`
* To monitor the logs of the container in realtime: `docker logs -f docker-noxbit`
