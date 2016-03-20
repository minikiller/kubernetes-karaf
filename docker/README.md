# docker-karaf
Lean karaf Docker image

## Current software

* Karaf 3.0.3

## Pre-requisites

* Docker 1.5.0+

## Build image (optional)

```
docker build --rm -t=kalix/karaf .
```

## Running karaf image

```
docker run --name karaf -d kalix/karaf
```

Running karaf sharing maven repository
```
docker run --name karaf -v ~/.m2/repository:/root/.m2/repository -d kalix/karaf
```

Running karaf client
```
docker exec -it karaf client
```

Running karaf in debug
```
docker run --name karaf -p 5005:5005 -d kalix/karaf karaf debug
```