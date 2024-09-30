SHELL := /bin/bash

IMAGE ?= node-app
VERSION ?= 0.1.0

echo:
	@echo $(IMAGE):$(VERSION)


build:
	docker build -f Dockerfile -t $(IMAGE):$(VERSION) .

install:
	docker-compose up -d

uninstall:
	docker-compose down