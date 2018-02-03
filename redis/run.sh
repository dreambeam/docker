#!/bin/bash

docker run -d -P -e MAXMEMORY=1G --name test_redis3 docker-redis:j2cli
