# DockerSample

## Build

### docker
```
$ cd path/to/DockerSample
$ docker build --tag=docker-sample .
```

### docker-compose
```
$ cd path/to/DockerSample
$ docker-compose build
```

## Run

### docker
```
$ docker run \
--volume ~/log:/root/log \
--interactive --tty --rm docker-sample
```
```
$ docker run \
--volume ~/log:/root/log \
--detach --rm docker-sample /bin/sh -c "crond && tail -f /dev/null"
```

### docker-compose
```
$ docker-compose run \
--detach docker-sample
```
