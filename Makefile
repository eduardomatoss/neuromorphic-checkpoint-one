APP_NAME="neuromorphic-checkpoint-one"
IMAGE_NAME="eduardomatoss/neuromorphic-checkpoint-one"
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
    DOCKER_USER=$(shell id -u $(USER)):$(shell id -g $(USER))
endif
ifeq ($(UNAME_S),Darwin)
    DOCKER_USER=
endif

local/install:
	pipenv install --dev --skip-lock

local/shell:
	pipenv shell

local/run:
	python run.py


docker/build:
	CURRENT_UID=${DOCKER_USER} docker-compose build ${APP_NAME}

docker/up:
	CURRENT_UID=${DOCKER_USER} docker-compose up -d

docker/down:
	CURRENT_UID=${DOCKER_USER} docker-compose down --remove-orphans

docker/run:
	CURRENT_UID=${DOCKER_USER} docker-compose run --service-port ${APP_NAME} python run.py

image/build:
	docker build . --target production -t ${IMAGE_NAME}:${VERSION}

image/push:
	docker push ${IMAGE_NAME}:${VERSION}
