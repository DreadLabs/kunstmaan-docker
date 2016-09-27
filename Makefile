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

.PHONY: build

build:
	docker build --file $(FILE) -t $(NS)/$(REPO):$(VERSION) $(CONTEXT)

default: build
