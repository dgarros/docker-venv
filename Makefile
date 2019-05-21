
DOCKER_IMG = dgarros/netbox_builder
DOCKER_TAG = 0.0.1

build:
	docker build -t $(DOCKER_IMG):$(DOCKER_TAG) .

cli:
	docker run -it -v $(shell pwd):/source \
	-w /source $(DOCKER_IMG):$(DOCKER_TAG) bash
