#
# Makefile for Kunstmaan CMS php services
#
# @see http://www.itnotes.de/docker/development/tools/2014/08/31/speed-up-your-docker-workflow-with-a-makefile/
# @see http://stackoverflow.com/a/10858332
#

ifndef SERVICE
$(error SERVICE is not set)
endif

NS = dreadlabs
VERSION ?= latest
FILE = $(SERVICE)/Dockerfile
CONTEXT = $(SERVICE)/

REPO = kmcms-$(SERVICE)
NAME = kmcms-$(SERVICE)
INSTANCE = default

.PHONY: build shell release versions

build:
	docker build --file $(FILE) -t $(NS)/$(REPO):$(VERSION) $(CONTEXT)

push:
	docker push $(NS)/$(REPO):$(VERSION)

shell:
	docker run --rm --name $(NAME)-$(INSTANCE) --interactive --tty $(NS)/$(REPO):$(VERSION) /bin/bash

release:
	make push -e SERVICE=$(SERVICE) VERSION=$(VERSION)

versions:
	docker images | grep $(NS)

default: build
