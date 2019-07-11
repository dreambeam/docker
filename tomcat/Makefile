container_name := tomcat8
container_registry := dreambeam
container_release := 8-slim

.PHONY: build/image tag/image push/image

build/image:
	docker build \
		-t $(container_name) .

tag/image: build/image
	docker tag $(container_name) $(container_registry)/$(container_name):$(container_release)

push/image: tag/image
	docker push $(container_registry)/$(container_name):$(container_release)