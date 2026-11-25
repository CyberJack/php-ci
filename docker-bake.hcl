variable "REGISTRY" {
  default = "cyberjack/php-ci"
}

group "default" {
  targets = ["php-ci"]
}

target "php-ci" {
  context = "."
  dockerfile = "Dockerfile"
  
  matrix = {
    version = ["8.1", "8.2", "8.3", "8.4", "8.5", "8.6"]
  }
  
  name = "php-ci-${replace(version, ".", "_")}"
  
  args = {
    PHP_VERSION = replace(version, ".", "")
    ALPINE_VERSION = lookup({
      "8.1" = "3.19"
      "8.2" = "3.22"
      "8.3" = "3.23"
      "8.4" = "3.23"
      "8.5" = "3.24"
      "8.6" = "edge"
    }, version, "3.23")
    # PHP 8.6 packages are only available in the edge testing repository
    ENABLE_TESTING_REPO = contains(["8.6"], version) ? "true" : "false"
  }
  
  tags = ["${REGISTRY}:${version}"]
}
