.PHONY: all
all: 7.1 7.2 7.3

.PHONY: 7.1
7.1: 7.1-buster

.PHONY: 7.2
7.2: 7.2-buster 7.2-alpine3.10

.PHONY: 7.3
7.3: 7.3-buster 7.3-alpine3.10

.PHONY: buster
buster: 7.1-buster 7.2-buster 7.3-buster

.PHONY: alpine3.10
alpine3.10: 7.2-alpine3.10 7.3-alpine3.10

.PHONY: clean
clean: 7.1-buster-clean 7.2-buster-clean 7.2-alpine3.10-clean 7.3-buster-clean 7.3-alpine3.10-clean

# 7.1-buster

.PHONY: 7.1-buster
7.1-buster: 7.1-buster-build 7.1-buster-test-version 7.1-buster-test-info

.PHONY: 7.1-buster-build
7.1-buster-build:
	for file in $(shell find $(CURDIR)/7.1/buster -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker build -t my/php:7.1-buster-$$d 7.1/buster/$$d; \
	done

.PHONY: 7.1-buster-clean
7.1-buster-clean:
	for file in $(shell find $(CURDIR)/7.1/buster -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker rmi -f my/php:7.1-buster-$$d; \
	done

.PHONY: 7.1-buster-test-version
7.1-buster-test-version:
	for file in $(shell find $(CURDIR)/7.1/buster -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker run -it --rm my/php:7.1-buster-$$d php --version; \
	done

.PHONY: 7.1-buster-test-info
7.1-buster-test-info:
	for file in $(shell find $(CURDIR)/7.1/buster -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		search=$$(echo $$d | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:7.1-buster-$$d php -i \
			| grep "$$search"; \
	done

# 7.2-buster

.PHONY: 7.2-buster
7.2-buster: 7.2-buster-build 7.2-buster-test-version 7.2-buster-test-info

.PHONY: 7.2-buster-build
7.2-buster-build:
	for file in $(shell find $(CURDIR)/7.2/buster -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker build -t my/php:7.2-buster-$$d 7.2/buster/$$d; \
	done

.PHONY: 7.2-buster-clean
7.2-buster-clean:
	for file in $(shell find $(CURDIR)/7.2/buster -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker rmi -f my/php:7.2-buster-$$d; \
	done

.PHONY: 7.2-buster-test-version
7.2-buster-test-version:
	for file in $(shell find $(CURDIR)/7.2/buster -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker run -it --rm my/php:7.2-buster-$$d php --version; \
	done

.PHONY: 7.2-buster-test-info
7.2-buster-test-info:
	for file in $(shell find $(CURDIR)/7.2/buster -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		search=$$(echo $$d | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:7.2-buster-$$d php -i \
			| grep "$$search"; \
	done

# 7.2-alpine3.10

.PHONY: 7.2-alpine3.10
7.2-alpine3.10: 7.2-alpine3.10-build 7.2-alpine3.10-test-version 7.2-alpine3.10-test-info

.PHONY: 7.2-alpine3.10-build
7.2-alpine3.10-build:
	for file in $(shell find $(CURDIR)/7.2/alpine3.10 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker build -t my/php:7.2-alpine3.10-$$d 7.2/alpine3.10/$$d; \
	done

.PHONY: 7.2-alpine3.10-clean
7.2-alpine3.10-clean:
	for file in $(shell find $(CURDIR)/7.2/alpine3.10 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker rmi -f my/php:7.2-alpine3.10-$$d; \
	done

.PHONY: 7.2-alpine3.10-test-version
7.2-alpine3.10-test-version:
	for file in $(shell find $(CURDIR)/7.2/alpine3.10 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker run -it --rm my/php:7.2-alpine3.10-$$d php --version; \
	done

.PHONY: 7.2-alpine3.10-test-info
7.2-alpine3.10-test-info:
	for file in $(shell find $(CURDIR)/7.2/alpine3.10 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		search=$$(echo $$d | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:7.2-alpine3.10-$$d php -i \
			| grep "$$search"; \
	done

# 7.3-buster

.PHONY: 7.3-buster
7.3-buster: 7.3-buster-build 7.3-buster-test-version 7.3-buster-test-info

.PHONY: 7.3-buster-build
7.3-buster-build:
	for file in $(shell find $(CURDIR)/7.3/buster -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker build -t my/php:7.3-buster-$$d 7.3/buster/$$d; \
	done

.PHONY: 7.3-buster-clean
7.3-buster-clean:
	for file in $(shell find $(CURDIR)/7.3/buster -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker rmi -f my/php:7.3-buster-$$d; \
	done

.PHONY: 7.3-buster-test-version
7.3-buster-test-version:
	for file in $(shell find $(CURDIR)/7.3/buster -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker run -it --rm my/php:7.3-buster-$$d php --version; \
	done

.PHONY: 7.3-buster-test-info
7.3-buster-test-info:
	for file in $(shell find $(CURDIR)/7.3/buster -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		search=$$(echo $$d | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:7.3-buster-$$d php -i \
			| grep "$$search"; \
	done

# 7.3-alpine3.10

.PHONY: 7.3-alpine3.10
7.3-alpine3.10: 7.3-alpine3.10-build 7.3-alpine3.10-test-version 7.3-alpine3.10-test-info

.PHONY: 7.3-alpine3.10-build
7.3-alpine3.10-build:
	for file in $(shell find $(CURDIR)/7.3/alpine3.10 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker build -t my/php:7.3-alpine3.10-$$d 7.3/alpine3.10/$$d; \
	done

.PHONY: 7.3-alpine3.10-clean
7.3-alpine3.10-clean:
	for file in $(shell find $(CURDIR)/7.3/alpine3.10 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker rmi -f my/php:7.3-alpine3.10-$$d; \
	done

.PHONY: 7.3-alpine3.10-test-version
7.3-alpine3.10-test-version:
	for file in $(shell find $(CURDIR)/7.3/alpine3.10 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker run -it --rm my/php:7.3-alpine3.10-$$d php --version; \
	done

.PHONY: 7.3-alpine3.10-test-info
7.3-alpine3.10-test-info:
	for file in $(shell find $(CURDIR)/7.3/alpine3.10 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		search=$$(echo $$d | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:7.3-alpine3.10-$$d php -i \
			| grep "$$search"; \
	done
