PHP_V = 8.0
OS_V = bullseye

.PHONY: all
all: build test-version test-module test-info test-tmp-files

.PHONY: test
all: test-version test-module test-info test-tmp-files

.PHONY: build
build:
	@set -eu; \
	for file in $(shell find $(CURDIR)/$(PHP_V)/$(OS_V)/ -type f -name Dockerfile | sort); do \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "::group::-=-=- $@ \"Ext: $$ext_n, PHP: $(PHP_V), OS: $(OS_V)\" =-=-="; \
		docker build -t my/php:$(PHP_V)-$(OS_V)-$$ext_n $(PHP_V)/$(OS_V)/$$ext_n; \
		echo "::endgroup::"; \
	done

.PHONY: clean
clean:
	@set -eu; \
	for file in $(shell find $(CURDIR)/$(PHP_V)/$(OS_V) -type f -name Dockerfile | sort); do \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "::group::-=-=- $@ \"Ext: $$ext_n, PHP: $(PHP_V), OS: $(OS_V)\" =-=-="; \
		docker rmi -f my/php:$(PHP_V)-$(OS_V)-$$ext_n; \
		echo "::endgroup::"; \
	done

.PHONY: test-version
test-version:
	@set -eu; \
	for file in $(shell find $(CURDIR)/$(PHP_V)/$(OS_V) -type f -name Dockerfile | sort); do \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "::group::-=-=- $@ \"Ext: $$ext_n, PHP: $(PHP_V), OS: $(OS_V)\" =-=-="; \
		docker run --rm my/php:$(PHP_V)-$(OS_V)-$$ext_n \
			php --version \
		; \
		echo "::endgroup::"; \
	done

.PHONY: test-module
test-module:
	@set -eu; \
	for file in $(shell find $(CURDIR)/$(PHP_V)/$(OS_V) -type f -name Dockerfile | sort); do \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "::group::-=-=- $@ \"Ext: $$ext_n, PHP: $(PHP_V), OS: $(OS_V)\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$(PHP_V)-$(OS_V)-$$ext_n \
			php -m \
				| grep -i "$$search" \
		; \
		echo "::endgroup::"; \
	done

.PHONY: test-info
test-info:
	@set -eu; \
	for file in $(shell find $(CURDIR)/$(PHP_V)/$(OS_V) -type f -name Dockerfile | sort); do \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "::group::-=-=- $@ \"Ext: $$ext_n, PHP: $(PHP_V), OS: $(OS_V)\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$(PHP_V)-$(OS_V)-$$ext_n \
			php -i \
				| grep "$$search" \
		; \
		echo "::endgroup::"; \
	done

.PHONY: test-tmp-files
test-tmp-files:
	@set -eu; \
	for file in $(shell find $(CURDIR)/$(PHP_V)/$(OS_V) -type f -name Dockerfile | sort); do \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "::group::-=-=- $@ \"Ext: $$ext_n, PHP: $(PHP_V), OS: $(OS_V)\" =-=-="; \
		docker run --rm my/php:$(PHP_V)-$(OS_V)-$$ext_n \
			sh -c 'set -eu; \
				[ -d "/usr/src/php" ] && echo "/usr/src/php Dirty" && exit 1 || echo "/usr/src/php Clean"; \
				[ "$$(ls -A /tmp)" ] && echo "/tmp/* Dirty" && exit 1 || echo "/tmp/* Clean"; \
				[ "$$(ls -A /var/tmp)" ] && echo "/var/tmp/* Dirty" && exit 1 || echo "/var/tmp/* Clean"; \
			' \
		; \
		echo "::endgroup::"; \
	done

.PHONY: new
new: new-build new-test-version new-test-module new-test-info new-test-tmp-files

.PHONY: new-test
new-test: new-test-version new-test-module new-test-info new-test-tmp-files

.PHONY: new-build
new-build:
	@set -eu; \
	for file in $(shell git diff --cached --name-only | grep Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- $@ \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: new-clean
new-clean:
	@set -eu; \
	for file in $(shell git diff --cached --name-only | grep Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- $@ \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: new-test-version
new-test-version:
	@set -eu; \
	for file in $(shell git diff --cached --name-only | grep Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- $@ \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: new-test-module
new-test-module:
	@set -eu; \
	for file in $(shell git diff --cached --name-only | grep Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- $@ \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -m \
				| grep -i "$$search" \
		; \
	done

.PHONY: new-test-info
new-test-info:
	@set -eu; \
	for file in $(shell git diff --cached --name-only | grep Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- $@ \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -i \
				| grep "$$search" \
		; \
	done

.PHONY: new-test-tmp-files
new-test-tmp-files:
	@set -eu; \
	for file in $(shell git diff --cached --name-only | grep Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- $@ \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			sh -c 'set -eu; \
				[ -d "/usr/src/php" ] && echo "/usr/src/php Dirty" && exit 1 || echo "/usr/src/php Clean"; \
				[ "$$(ls -A /tmp)" ] && echo "/tmp/* Dirty" && exit 1 || echo "/tmp/* Clean"; \
				[ "$$(ls -A /var/tmp)" ] && echo "/var/tmp/* Dirty" && exit 1 || echo "/var/tmp/* Clean"; \
			' \
		; \
	done
