docker-redis
============

Redis is an open source key-value store that functions as a data structure server.

## Usage
```
docker run --name redis-service-name -d docker-redis:j2cli
```

## Environment

MAXMEMORY, MAXMEMORY_POLICY can be given with **docker run -e** options

* MAXMEMORY
  - E.g. -e MAXMEMORY=1024

* MAXMEMORY_POLICY
  - E.g. -e MAXMEMORY_POLICY=volatile-lru

## Default Redis Ports

* 6379
