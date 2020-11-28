.PHONY: all
all: 7.2 7.3 7.4 8.0

.PHONY: 7.2
7.2: 7.2-buster 7.2-alpine3.12

.PHONY: 7.3
7.3: 7.3-buster 7.3-alpine3.12

.PHONY: 7.4
7.4: 7.4-buster 7.4-alpine3.12

.PHONY: 8.0
8.0: 8.0-buster 8.0-alpine3.12

.PHONY: buster
buster: 7.2-buster 7.3-buster 7.4-buster 8.0-buster

.PHONY: alpine3.12
alpine3.12: 7.2-alpine3.12 7.3-alpine3.12 7.4-alpine3.12 8.0-alpine3.12

.PHONY: clean
clean: 7.2-buster-clean 7.2-alpine3.12-clean 7.3-buster-clean 7.3-alpine3.12-clean 7.4-buster-clean 7.4-alpine3.12-clean 8.0-buster-clean 8.0-alpine3.12-clean cleanup

.PHONY: cleanup
cleanup:
	set -eu; \
	for os_v in 'buster' 'alpine3.12'; do \
		for php_v in '7.2' '7.3' '7.4' '8.0'; do \
			echo "-=-=- \"PHP: $$php_v, OS: $$os_v\" =-=-="; \
			docker rmi -f php:$$php_v-$$os_v; \
		done \
	done

# 7.2-buster

.PHONY: 7.2-buster
7.2-buster: 7.2-buster-build 7.2-buster-test-version 7.2-buster-test-info

.PHONY: 7.2-buster-build
7.2-buster-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.2/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.2-buster-clean
7.2-buster-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.2/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.2-buster-test-version
7.2-buster-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.2/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php --version; \
	done

.PHONY: 7.2-buster-test-info
7.2-buster-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.2/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php -i \
			| grep "$$search"; \
	done

# 7.2-alpine3.12

.PHONY: 7.2-alpine3.12
7.2-alpine3.12: 7.2-alpine3.12-build 7.2-alpine3.12-test-version 7.2-alpine3.12-test-info

.PHONY: 7.2-alpine3.12-build
7.2-alpine3.12-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.2/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.2-alpine3.12-clean
7.2-alpine3.12-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.2/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.2-alpine3.12-test-version
7.2-alpine3.12-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.2/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php --version; \
	done

.PHONY: 7.2-alpine3.12-test-info
7.2-alpine3.12-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.2/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php -i \
			| grep "$$search"; \
	done

# 7.3-buster

.PHONY: 7.3-buster
7.3-buster: 7.3-buster-build 7.3-buster-test-version 7.3-buster-test-info

.PHONY: 7.3-buster-build
7.3-buster-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.3-buster-clean
7.3-buster-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.3-buster-test-version
7.3-buster-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php --version; \
	done

.PHONY: 7.3-buster-test-info
7.3-buster-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php -i \
			| grep "$$search"; \
	done

# 7.3-alpine3.12

.PHONY: 7.3-alpine3.12
7.3-alpine3.12: 7.3-alpine3.12-build 7.3-alpine3.12-test-version 7.3-alpine3.12-test-info

.PHONY: 7.3-alpine3.12-build
7.3-alpine3.12-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.3-alpine3.12-clean
7.3-alpine3.12-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.3-alpine3.12-test-version
7.3-alpine3.12-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php --version; \
	done

.PHONY: 7.3-alpine3.12-test-info
7.3-alpine3.12-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.3/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php -i \
			| grep "$$search"; \
	done

# 7.4-buster

.PHONY: 7.4-buster
7.4-buster: 7.4-buster-build 7.4-buster-test-version 7.4-buster-test-info

.PHONY: 7.4-buster-build
7.4-buster-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.4-buster-clean
7.4-buster-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.4-buster-test-version
7.4-buster-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php --version; \
	done

.PHONY: 7.4-buster-test-info
7.4-buster-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php -i \
			| grep "$$search"; \
	done

# 7.4-alpine3.12

.PHONY: 7.4-alpine3.12
7.4-alpine3.12: 7.4-alpine3.12-build 7.4-alpine3.12-test-version 7.4-alpine3.12-test-info

.PHONY: 7.4-alpine3.12-build
7.4-alpine3.12-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 7.4-alpine3.12-clean
7.4-alpine3.12-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 7.4-alpine3.12-test-version
7.4-alpine3.12-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php --version; \
	done

.PHONY: 7.4-alpine3.12-test-info
7.4-alpine3.12-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/7.4/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php -i \
			| grep "$$search"; \
	done

# 8.0-buster

.PHONY: 8.0-buster
8.0-buster: 8.0-buster-build 8.0-buster-test-version 8.0-buster-test-info

.PHONY: 8.0-buster-build
8.0-buster-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 8.0-buster-clean
8.0-buster-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 8.0-buster-test-version
8.0-buster-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php --version; \
	done

.PHONY: 8.0-buster-test-info
8.0-buster-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/buster -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php -i \
			| grep "$$search"; \
	done

# 8.0-alpine3.12

.PHONY: 8.0-alpine3.12
8.0-alpine3.12: 8.0-alpine3.12-build 8.0-alpine3.12-test-version 8.0-alpine3.12-test-info

.PHONY: 8.0-alpine3.12-build
8.0-alpine3.12-build:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: 8.0-alpine3.12-clean
8.0-alpine3.12-clean:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: 8.0-alpine3.12-test-version
8.0-alpine3.12-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php --version; \
	done

.PHONY: 8.0-alpine3.12-test-info
8.0-alpine3.12-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR)/8.0/alpine3.12 -type f -name Dockerfile); do \
		php_v=$$(basename $$(dirname $$(dirname $$(dirname $$file)))); \
		os_v=$$(basename $$(dirname $$(dirname $$file))); \
		ext_n=$$(basename $$(dirname $$file)); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php -i \
			| grep "$$search"; \
	done

# gd

.PHONY: gd
gd: gd-build gd-test-version gd-test-info

.PHONY: gd-build
gd-build:
	set -eu; \
	for file in $(shell find $(CURDIR) -type d -name gd); do \
		php_v=$$(basename $$(dirname $$(dirname $$file))); \
		os_v=$$(basename $$(dirname $$file)); \
		ext_n=$$(basename $$file); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker build -t my/php:$$php_v-$$os_v-$$ext_n $$php_v/$$os_v/$$ext_n; \
	done

.PHONY: gd-clean
gd-clean:
	set -eu; \
	for file in $(shell find $(CURDIR) -type d -name gd); do \
		php_v=$$(basename $$(dirname $$(dirname $$file))); \
		os_v=$$(basename $$(dirname $$file)); \
		ext_n=$$(basename $$file); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker rmi -f my/php:$$php_v-$$os_v-$$ext_n; \
	done

.PHONY: gd-test-version
gd-test-version:
	set -eu; \
	for file in $(shell find $(CURDIR) -type d -name gd); do \
		php_v=$$(basename $$(dirname $$(dirname $$file))); \
		os_v=$$(basename $$(dirname $$file)); \
		ext_n=$$(basename $$file); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php --version; \
	done

.PHONY: gd-test-info
gd-test-info:
	set -eu; \
	for file in $(shell find $(CURDIR) -type d -name gd); do \
		php_v=$$(basename $$(dirname $$(dirname $$file))); \
		os_v=$$(basename $$(dirname $$file)); \
		ext_n=$$(basename $$file); \
		echo "-=-=- \"Ext: $$ext_n, PHP: $$php_v, OS: $$os_v\" =-=-="; \
		search=$$(echo $$ext_n | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:$$php_v-$$os_v-$$ext_n php -i \
			| grep "$$search"; \
	done
