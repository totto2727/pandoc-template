ROOT:=$(shell pwd)
DOCKERFILE:=Dockerfile
IMAGE_NAME:=pandoc-lualatex
CONFIG:=pandoc-default.yaml
MARKDOWNS:=$(shell find documents/ -type f -name "*.md")
PDF:=$(notdir $(shell pwd)).pdf

all:	pandoc

pandoc:	$(MARKDOWN)
		docker run --rm --volume "$(ROOT):/data" --entrypoint pandoc $(IMAGE_NAME) $(MARKDOWNS) -o $(PDF) -d $(CONFIG)

build:	$(DOCKERFILE)
		docker build -f $(DOCKERFILE) -t $(IMAGE_NAME) .
		
plantuml:	$(PLANTUML_SERVER_POOT:=9000) $(PLANTUML_SERVER_IMAGE:=plantuml/plantuml-server:jetty)
		docker run -d --rm -p $(PLANTUML_SERVER_POOT):8080 $(plantuml/plantuml-server:jetty)
