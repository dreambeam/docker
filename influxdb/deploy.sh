#!/bin/bash

set -e

docker run -d -p 8086:8086 \
    --name influxdb2 \
    -v influxdb2:/var/lib/influxdb2 \
    -e DOCKER_INFLUXDB_INIT_USERNAME=my-user \
    -e DOCKER_INFLUXDB_INIT_PASSWORD=my-password \
    -e DOCKER_INFLUXDB_INIT_ORG=my-great-org \
    -e DOCKER_INFLUXDB_INIT_BUCKET=my-bucket \
    influxdb:2.0
