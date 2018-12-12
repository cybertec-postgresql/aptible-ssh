.PHONY: start build

IMAGE_NAME ?= aptible-ssh:debian

start: build
	@docker run -it \
		-e LOCAL_PASS \
		-e REMOTE_USER \
		-e REMOTE_HOST \
		-e REMOTE_PORT \
		-e SSH_KEY \
		${IMAGE_NAME}

build:
	docker build -t ${IMAGE_NAME} .