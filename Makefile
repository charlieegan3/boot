TAG := $(shell tar -cf - . | md5sum | cut -f 1 -d " ")
PROJECT := boot
IMAGE := charlieegan3/$(PROJECT)

build:
	docker build -t $(IMAGE):$(TAG) .

shell: build
	docker run -it -v $(PWD):/app $(IMAGE):$(TAG) bash

server: build
	docker run -it --network="host" -v $(PWD):/app $(IMAGE):$(TAG)
