.PHONY: all
all: 7.3 7.4 8.0

.PHONY: 7.3
7.3: 7.3-buster 7.3-alpine3.13

.PHONY: 7.4
7.4: 7.4-buster 7.4-alpine3.13

.PHONY: 8.0
8.0: 8.0-buster 8.0-alpine3.13

.PHONY: buster
buster: 7.3-buster 7.4-buster 8.0-buster

.PHONY: alpine3.13
alpine3.13: 7.3-alpine3.13 7.4-alpine3.13 8.0-alpine3.13

.PHONY: clean
clean: 7.3-buster-clean 7.3-alpine3.13-clean 7.4-buster-clean 7.4-alpine3.13-clean 8.0-buster-clean 8.0-alpine3.13-clean cleanup

.PHONY: cleanup
cleanup:
	set -eu; \
	for os_v in 'buster' 'alpine3.13'; do \
		for php_v in '7.3' '7.4' '8.0'; do \
			echo "-=-=- \"PHP: $$php_v, OS: $$os_v\" =-=-="; \
			docker rmi -f php:$$php_v-$$os_v; \
		done \
	done

# 7.3-buster

.PHONY: 7.3-buster
7.3-buster: 7.3-buster-build 7.3-buster-test-version 7.3-buster-test-module 7.3-buster-test-info 7.3-buster-test-tmp-files

.PHONY: 7.3-buster-build
7.3-buster-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/buster -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.3-buster-clean
7.3-buster-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/buster -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.3-buster-test-version
7.3-buster-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/buster -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: 7.3-buster-test-module
7.3-buster-test-module:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/buster -type f -name Dockerfile | sort); do \
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

.PHONY: 7.3-buster-test-info
7.3-buster-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/buster -type f -name Dockerfile | sort); do \
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

.PHONY: 7.3-buster-test-tmp-files
7.3-buster-test-tmp-files:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/buster -type f -name Dockerfile | sort); do \
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

# 7.3-alpine3.13

.PHONY: 7.3-alpine3.13
7.3-alpine3.13: 7.3-alpine3.13-build 7.3-alpine3.13-test-version 7.3-alpine3.13-test-module 7.3-alpine3.13-test-info 7.3-alpine3.13-test-tmp-files

.PHONY: 7.3-alpine3.13-build
7.3-alpine3.13-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.13 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.3-alpine3.13-clean
7.3-alpine3.13-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.13 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.3-alpine3.13-test-version
7.3-alpine3.13-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.13 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: 7.3-alpine3.13-test-module
7.3-alpine3.13-test-module:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.13 -type f -name Dockerfile | sort); do \
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

.PHONY: 7.3-alpine3.13-test-info
7.3-alpine3.13-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.13 -type f -name Dockerfile | sort); do \
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

.PHONY: 7.3-alpine3.13-test-tmp-files
7.3-alpine3.13-test-tmp-files:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.13 -type f -name Dockerfile | sort); do \
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

# 7.4-buster

.PHONY: 7.4-buster
7.4-buster: 7.4-buster-build 7.4-buster-test-version 7.4-buster-test-module 7.4-buster-test-info 7.4-buster-test-tmp-files

.PHONY: 7.4-buster-build
7.4-buster-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/buster -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.4-buster-clean
7.4-buster-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/buster -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.4-buster-test-version
7.4-buster-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/buster -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: 7.4-buster-test-module
7.4-buster-test-module:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/buster -type f -name Dockerfile | sort); do \
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

.PHONY: 7.4-buster-test-info
7.4-buster-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/buster -type f -name Dockerfile | sort); do \
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

.PHONY: 7.4-buster-test-tmp-files
7.4-buster-test-tmp-files:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/buster -type f -name Dockerfile | sort); do \
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

# 7.4-alpine3.13

.PHONY: 7.4-alpine3.13
7.4-alpine3.13: 7.4-alpine3.13-build 7.4-alpine3.13-test-version 7.4-alpine3.13-test-module 7.4-alpine3.13-test-info 7.4-alpine3.13-test-tmp-files

.PHONY: 7.4-alpine3.13-build
7.4-alpine3.13-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.13 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.4-alpine3.13-clean
7.4-alpine3.13-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.13 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.4-alpine3.13-test-version
7.4-alpine3.13-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.13 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: 7.4-alpine3.13-test-module
7.4-alpine3.13-test-module:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.13 -type f -name Dockerfile | sort); do \
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

.PHONY: 7.4-alpine3.13-test-info
7.4-alpine3.13-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.13 -type f -name Dockerfile | sort); do \
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

.PHONY: 7.4-alpine3.13-test-tmp-files
7.4-alpine3.13-test-tmp-files:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.13 -type f -name Dockerfile | sort); do \
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

# 8.0-buster

.PHONY: 8.0-buster
8.0-buster: 8.0-buster-build 8.0-buster-test-version 8.0-buster-test-module 8.0-buster-test-info 8.0-buster-test-tmp-files

.PHONY: 8.0-buster-build
8.0-buster-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/buster -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 8.0-buster-clean
8.0-buster-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/buster -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 8.0-buster-test-version
8.0-buster-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/buster -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: 8.0-buster-test-module
8.0-buster-test-module:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/buster -type f -name Dockerfile | sort); do \
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

.PHONY: 8.0-buster-test-info
8.0-buster-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/buster -type f -name Dockerfile | sort); do \
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

.PHONY: 8.0-buster-test-tmp-files
8.0-buster-test-tmp-files:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/buster -type f -name Dockerfile | sort); do \
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

# 8.0-alpine3.13

.PHONY: 8.0-alpine3.13
8.0-alpine3.13: 8.0-alpine3.13-build 8.0-alpine3.13-test-version 8.0-alpine3.13-test-module 8.0-alpine3.13-test-info 8.0-alpine3.13-test-tmp-files

.PHONY: 8.0-alpine3.13-build
8.0-alpine3.13-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.13 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 8.0-alpine3.13-clean
8.0-alpine3.13-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.13 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 8.0-alpine3.13-test-version
8.0-alpine3.13-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.13 -type f -name Dockerfile | sort); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run --rm my/php:$$php_v-$$os_v-$$ext_n \
			php --version \
		; \
	done

.PHONY: 8.0-alpine3.13-test-module
8.0-alpine3.13-test-module:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.13 -type f -name Dockerfile | sort); do \
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

.PHONY: 8.0-alpine3.13-test-info
8.0-alpine3.13-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.13 -type f -name Dockerfile | sort); do \
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

.PHONY: 8.0-alpine3.13-test-tmp-files
8.0-alpine3.13-test-tmp-files:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.13 -type f -name Dockerfile | sort); do \
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
