help:
	@cat Makefile

DOCKER_FILE=Dockerfile
SRC?=$(shell pwd)
CONTAINER_SRC=/opt/aws

IMAGE=yantonov/aws-cli
CONTAINER_NAME?=$(shell echo "$(IMAGE)" | tr '/' '_')

AWS_DEFAULT_REGION?="us-east-1"

build:
	docker build \
		-t $(IMAGE) \
		-f $(DOCKER_FILE) .

logs:
	docker logs "$(CONTAINER_NAME)"

ssh:
	docker run --hostname localhost \
			-it \
			-e AWS_ACCESS_KEY_ID="$(AWS_ACCESS_KEY_ID)" \
			-e AWS_SECRET_ACCESS_KEY="$(AWS_SECRET_ACCESS_KEY)" \
			-e AWS_SESSION_TOKEN="$(AWS_SESSION_TOKEN)" \
			-e AWS_DEFAULT_REGION="$(AWS_DEFAULT_REGION)" \
			--name "$(CONTAINER_NAME)" \
			--rm \
			"$(IMAGE)" \
			/bin/bash

stop:
	docker stop "$(CONTAINER_NAME)"

pull:
	docker pull "$(IMAGE)"

push:
	docker push "$(IMAGE)"

uninstall:
	docker image rm "$(IMAGE)"
