#MAKEFILE https://github.com/tstelzle/TeeworldsServer
#AUTHOR: Tarek Stelzle

CONFIG-DIR := $(PWD)/config
IMAGE-NAME := teeworlds-image
CONTAINER-NAME := teeworlds-server

default:
	@echo "Possible Targets:"
	@echo " build-image: 		Builds an image from the given Dockerfile."
	@echo " container-run: 	Runs the container and starts the teeworlds server."
	@echo " container:		Runs the container from the previous builded image."
	@echo " run:			Starts the teeworlds server."
	@echo " stop-server: 		Stops the teeworls server."
	@echo " delete-server: 	Stops and deletes the teeworls server."
	@echo " exec: 			Opens a console inside the docker container."
	@echo " restart: 		Restarts the server and loads a new config."

build-image:
	docker build -t $(IMAGE-NAME) .

container:
	docker run -d --name $(CONTAINER-NAME) -v $(CONFIG-DIR):/home/uploads -p 8303:8303/udp $(IMAGE-NAME)

run:
	docker start $(CONTAINER-NAME)

container-run: container
	docker start $(CONTAINER-NAME)

stop-server:
	docker stop $(CONTAINER-NAME)

delete-server: stop-server
	docker rm $(CONTAINER-NAME)

exec:
	docker exec -it $(CONTAINER-NAME) /bin/bash

restart: stop-server run
	@echo "Restarted Server."
