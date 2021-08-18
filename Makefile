.PHONY: all
all: 7.3 7.4 8.0

.PHONY: 7.3
7.3: 7.3-bullseye 7.3-alpine3.14

.PHONY: 7.4
7.4: 7.4-bullseye 7.4-alpine3.14

.PHONY: 8.0
8.0: 8.0-bullseye 8.0-alpine3.14

.PHONY: bullseye
bullseye: 7.3-bullseye 7.4-bullseye 8.0-bullseye

.PHONY: alpine3.14
alpine3.14: 7.3-alpine3.14 7.4-alpine3.14 8.0-alpine3.14

.PHONY: clean
clean: 7.3-bullseye-clean 7.3-alpine3.14-clean 7.4-bullseye-clean 7.4-alpine3.14-clean 8.0-bullseye-clean 8.0-alpine3.14-clean cleanup

.PHONY: cleanup
cleanup:
	set -eu; \
	for os_v in 'bullseye' 'alpine3.14'; do \
		for php_v in '7.3' '7.4' '8.0'; do \
			echo "-=-=- \"PHP: $$php_v, OS: $$os_v\" =-=-="; \
			docker rmi -f php:$$php_v-$$os_v; \
		done \
	done

# 7.3-bullseye

.PHONY: 7.3-bullseye
7.3-bullseye: 7.3-bullseye-build 7.3-bullseye-test-version 7.3-bullseye-test-module 7.3-bullseye-test-info 7.3-bullseye-test-tmp-files

.PHONY: 7.3-bullseye-build
7.3-bullseye-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.3-bullseye-clean
7.3-bullseye-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.3-bullseye-test-version
7.3-bullseye-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: 7.3-bullseye-test-module
7.3-bullseye-test-module:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -m \
				| grep -i "$$search" \
		; \
	done

.PHONY: 7.3-bullseye-test-info
7.3-bullseye-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -i \
				| grep "$$search" \
		; \
	done

.PHONY: 7.3-bullseye-test-tmp-files
7.3-bullseye-test-tmp-files:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			sh -c 'set -eu; \
				[ -d "/usr/src/php" ] && echo "/usr/src/php Dirty" && exit 1 || echo "/usr/src/php Clean"; \
				[ "$$(ls -A /tmp)" ] && echo "/tmp/* Dirty" && exit 1 || echo "/tmp/* Clean"; \
				[ "$$(ls -A /var/tmp)" ] && echo "/var/tmp/* Dirty" && exit 1 || echo "/var/tmp/* Clean"; \
			' \
		; \
	done

# 7.3-alpine3.14

.PHONY: 7.3-alpine3.14
7.3-alpine3.14: 7.3-alpine3.14-build 7.3-alpine3.14-test-version 7.3-alpine3.14-test-module 7.3-alpine3.14-test-info 7.3-alpine3.14-test-tmp-files

.PHONY: 7.3-alpine3.14-build
7.3-alpine3.14-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.3-alpine3.14-clean
7.3-alpine3.14-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.3-alpine3.14-test-version
7.3-alpine3.14-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: 7.3-alpine3.14-test-module
7.3-alpine3.14-test-module:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -m \
				| grep -i "$$search" \
		; \
	done

.PHONY: 7.3-alpine3.14-test-info
7.3-alpine3.14-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -i \
				| grep "$$search" \
		; \
	done

.PHONY: 7.3-alpine3.14-test-tmp-files
7.3-alpine3.14-test-tmp-files:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			sh -c 'set -eu; \
				[ -d "/usr/src/php" ] && echo "/usr/src/php Dirty" && exit 1 || echo "/usr/src/php Clean"; \
				[ "$$(ls -A /tmp)" ] && echo "/tmp/* Dirty" && exit 1 || echo "/tmp/* Clean"; \
				[ "$$(ls -A /var/tmp)" ] && echo "/var/tmp/* Dirty" && exit 1 || echo "/var/tmp/* Clean"; \
			' \
		; \
	done

# 7.4-bullseye

.PHONY: 7.4-bullseye
7.4-bullseye: 7.4-bullseye-build 7.4-bullseye-test-version 7.4-bullseye-test-module 7.4-bullseye-test-info 7.4-bullseye-test-tmp-files

.PHONY: 7.4-bullseye-build
7.4-bullseye-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.4-bullseye-clean
7.4-bullseye-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.4-bullseye-test-version
7.4-bullseye-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: 7.4-bullseye-test-module
7.4-bullseye-test-module:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -m \
				| grep -i "$$search" \
		; \
	done

.PHONY: 7.4-bullseye-test-info
7.4-bullseye-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -i \
				| grep "$$search" \
		; \
	done

.PHONY: 7.4-bullseye-test-tmp-files
7.4-bullseye-test-tmp-files:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			sh -c 'set -eu; \
				[ -d "/usr/src/php" ] && echo "/usr/src/php Dirty" && exit 1 || echo "/usr/src/php Clean"; \
				[ "$$(ls -A /tmp)" ] && echo "/tmp/* Dirty" && exit 1 || echo "/tmp/* Clean"; \
				[ "$$(ls -A /var/tmp)" ] && echo "/var/tmp/* Dirty" && exit 1 || echo "/var/tmp/* Clean"; \
			' \
		; \
	done

# 7.4-alpine3.14

.PHONY: 7.4-alpine3.14
7.4-alpine3.14: 7.4-alpine3.14-build 7.4-alpine3.14-test-version 7.4-alpine3.14-test-module 7.4-alpine3.14-test-info 7.4-alpine3.14-test-tmp-files

.PHONY: 7.4-alpine3.14-build
7.4-alpine3.14-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.4-alpine3.14-clean
7.4-alpine3.14-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.4-alpine3.14-test-version
7.4-alpine3.14-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: 7.4-alpine3.14-test-module
7.4-alpine3.14-test-module:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -m \
				| grep -i "$$search" \
		; \
	done

.PHONY: 7.4-alpine3.14-test-info
7.4-alpine3.14-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -i \
				| grep "$$search" \
		; \
	done

.PHONY: 7.4-alpine3.14-test-tmp-files
7.4-alpine3.14-test-tmp-files:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			sh -c 'set -eu; \
				[ -d "/usr/src/php" ] && echo "/usr/src/php Dirty" && exit 1 || echo "/usr/src/php Clean"; \
				[ "$$(ls -A /tmp)" ] && echo "/tmp/* Dirty" && exit 1 || echo "/tmp/* Clean"; \
				[ "$$(ls -A /var/tmp)" ] && echo "/var/tmp/* Dirty" && exit 1 || echo "/var/tmp/* Clean"; \
			' \
		; \
	done

# 8.0-bullseye

.PHONY: 8.0-bullseye
8.0-bullseye: 8.0-bullseye-build 8.0-bullseye-test-version 8.0-bullseye-test-module 8.0-bullseye-test-info 8.0-bullseye-test-tmp-files

.PHONY: 8.0-bullseye-build
8.0-bullseye-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 8.0-bullseye-clean
8.0-bullseye-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 8.0-bullseye-test-version
8.0-bullseye-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: 8.0-bullseye-test-module
8.0-bullseye-test-module:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -m \
				| grep -i "$$search" \
		; \
	done

.PHONY: 8.0-bullseye-test-info
8.0-bullseye-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -i \
				| grep "$$search" \
		; \
	done

.PHONY: 8.0-bullseye-test-tmp-files
8.0-bullseye-test-tmp-files:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/bullseye -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			sh -c 'set -eu; \
				[ -d "/usr/src/php" ] && echo "/usr/src/php Dirty" && exit 1 || echo "/usr/src/php Clean"; \
				[ "$$(ls -A /tmp)" ] && echo "/tmp/* Dirty" && exit 1 || echo "/tmp/* Clean"; \
				[ "$$(ls -A /var/tmp)" ] && echo "/var/tmp/* Dirty" && exit 1 || echo "/var/tmp/* Clean"; \
			' \
		; \
	done

# 8.0-alpine3.14

.PHONY: 8.0-alpine3.14
8.0-alpine3.14: 8.0-alpine3.14-build 8.0-alpine3.14-test-version 8.0-alpine3.14-test-module 8.0-alpine3.14-test-info 8.0-alpine3.14-test-tmp-files

.PHONY: 8.0-alpine3.14-build
8.0-alpine3.14-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 8.0-alpine3.14-clean
8.0-alpine3.14-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 8.0-alpine3.14-test-version
8.0-alpine3.14-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: 8.0-alpine3.14-test-module
8.0-alpine3.14-test-module:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -m \
				| grep -i "$$search" \
		; \
	done

.PHONY: 8.0-alpine3.14-test-info
8.0-alpine3.14-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -i \
				| grep "$$search" \
		; \
	done

.PHONY: 8.0-alpine3.14-test-tmp-files
8.0-alpine3.14-test-tmp-files:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.14 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			sh -c 'set -eu; \
				[ -d "/usr/src/php" ] && echo "/usr/src/php Dirty" && exit 1 || echo "/usr/src/php Clean"; \
				[ "$$(ls -A /tmp)" ] && echo "/tmp/* Dirty" && exit 1 || echo "/tmp/* Clean"; \
				[ "$$(ls -A /var/tmp)" ] && echo "/var/tmp/* Dirty" && exit 1 || echo "/var/tmp/* Clean"; \
			' \
		; \
	done

# single_test

.PHONY: single_test
single_test: single_test-build single_test-test-version single_test-test-info

.PHONY: single_test-build
single_test-build:
	set -eu; \
	for file in $(shell find $(CURDIR) -type d -name gd | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$file))); \
		os_v=$$(basename $$(dirname $$file)); \
		ext_n=$$(basename $$file); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: single_test-clean
single_test-clean:
	set -eu; \
	for file in $(shell find $(CURDIR) -type d -name gd | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$file))); \
		os_v=$$(basename $$(dirname $$file)); \
		ext_n=$$(basename $$file); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: single_test-test-version
single_test-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR) -type d -name gd | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$file))); \
		os_v=$$(basename $$(dirname $$file)); \
		ext_n=$$(basename $$file); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: single_test-test-info
single_test-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR) -type d -name gd | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$file))); \
		os_v=$$(basename $$(dirname $$file)); \
		ext_n=$$(basename $$file); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php -i \
				| grep "$$search" \
		; \
	done
