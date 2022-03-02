# Grafana image

This project deploys the latest docker image of Grafana.

## Running your Grafana container

Start Grafana container on port `3000`.

```
docker run -d --name=grafana -p 3000:3000 grafana/grafana-oss:latest
```

## Configuring Grafana container

All options defined in conf/grafana.ini can be overriden using environment variables.

```
docker run \
  -d \
  -p 3000:3000 \
  --name=grafana \
  -v grafana-storage:/var/lib/grafana \
  -e "GF_SERVER_ROOT_URL=http://grafana.server.name" \
  -e "GF_SECURITY_ADMIN_PASSWORD=s3cret" \
  -e "GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource" \
  grafana/grafana-oss:latest
```

## Configuring AWS credentials for CloudWatch support

```
docker run \
  -d \
  -p 3000:3000 \
  --name=grafana \
  -e "GF_AWS_PROFILES=default" \
  -e "GF_AWS_default_ACCESS_KEY_ID=YOUR_ACCESS_KEY" \
  -e "GF_AWS_default_SECRET_ACCESS_KEY=YOUR_SECRET_KEY" \
  -e "GF_AWS_default_REGION=us-east-1" \
  grafana/grafana-enterprise
```

## Reference

Tested version `v8.4.2`

[Run Grafana Docker image](https://grafana.com/docs/grafana/latest/installation/docker/)
