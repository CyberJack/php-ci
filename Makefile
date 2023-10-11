export VERSIONS = 8.3 8.2 8.1 8.0 7.4 7.3 7.2

.DEFAULT_GOAL := default
.PHONY: default

build-docker-images:
	$(foreach var,$(VERSIONS), docker buildx build --no-cache -t cyberjack/php-ci:$(var) -f Dockerfile-ci.$(var) . ;)

build: build-docker-images
default: build
