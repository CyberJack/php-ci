export VERSIONS = 8.4 8.3 8.2 8.1 8.0 7.4

.DEFAULT_GOAL = build-all
.PHONY        : build-all

## —— 🎵 🐳 The PHP-CI Makefile 🐳 🎵 ——————————————————————————————————
help: ## Outputs this help screen
	@grep -E '(^[a-zA-Z0-9\./_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

## —— 🐘 Commands 🐘 ———————————————————————————————————————————————————

build-all: ## Build all the php-ci images
	$(foreach var,$(VERSIONS), docker buildx build --quiet -t cyberjack/php-ci:$(var) -f Dockerfile-ci.$(var) . ;)

build-8.4: ## Build the php 8.4 image
	docker buildx build --quiet -t cyberjack/php-ci:8.4 -f Dockerfile-ci.8.4 .

build-8.3: ## Build the php 8.3 image
	docker buildx build --quiet -t cyberjack/php-ci:8.3 -f Dockerfile-ci.8.3 .

build-8.2: ## Build the php 8.2 image
	docker buildx build --quiet -t cyberjack/php-ci:8.2 -f Dockerfile-ci.8.2 .

build-8.1: ## Build the php 8.1 image
	docker buildx build --quiet -t cyberjack/php-ci:8.1 -f Dockerfile-ci.8.1 .

build-8.0: ## Build the php 8.0 image
	docker buildx build --quiet -t cyberjack/php-ci:8.0 -f Dockerfile-ci.8.0 .

build-7.4: ## Build the php 7.4 image
	docker buildx build --quiet -t cyberjack/php-ci:7.4 -f Dockerfile-ci.7.4 .
