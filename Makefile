NAME:=faas-grafana
VERSION:=latest
DOCKER_IMAGE_NAME:=$(NAME)

.PHONY: build
build:
	@cd grafana ; docker build -t $(DOCKER_IMAGE_NAME):$(VERSION) .

.PHONY: push
push:
	@docker push $(DOCKER_IMAGE_NAME):$(VERSION)
