.PHONY: all
all: 7.1 7.2 7.3

.PHONY: 7.1
7.1: 7.1-stretch

.PHONY: 7.2
7.2: 7.2-stretch 7.2-alpine3.9

.PHONY: 7.3
7.3: 7.3-stretch 7.3-alpine3.9

.PHONY: stretch
stretch: 7.1-stretch 7.2-stretch 7.3-stretch

.PHONY: alpine3.9
alpine3.9: 7.2-alpine3.9 7.3-alpine3.9

.PHONY: clean
clean: 7.1-stretch-clean 7.2-stretch-clean 7.2-alpine3.9-clean 7.3-stretch-clean 7.3-alpine3.9-clean

# 7.1-stretch

.PHONY: 7.1-stretch
7.1-stretch: 7.1-stretch-build 7.1-stretch-test-version 7.1-stretch-test-info

.PHONY: 7.1-stretch-build
7.1-stretch-build:
	for file in $(shell find $(CURDIR)/7.1/stretch -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker build -t my/php:7.1-stretch-$$d 7.1/stretch/$$d; \
	done

.PHONY: 7.1-stretch-clean
7.1-stretch-clean:
	for file in $(shell find $(CURDIR)/7.1/stretch -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker rmi -f my/php:7.1-stretch-$$d; \
	done

.PHONY: 7.1-stretch-test-version
7.1-stretch-test-version:
	for file in $(shell find $(CURDIR)/7.1/stretch -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker run -it --rm my/php:7.1-stretch-$$d php --version; \
	done

.PHONY: 7.1-stretch-test-info
7.1-stretch-test-info:
	for file in $(shell find $(CURDIR)/7.1/stretch -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		search=$$(echo $$d | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:7.1-stretch-$$d php -i \
			| grep "$$search"; \
	done

# 7.2-stretch

.PHONY: 7.2-stretch
7.2-stretch: 7.2-stretch-build 7.2-stretch-test-version 7.2-stretch-test-info

.PHONY: 7.2-stretch-build
7.2-stretch-build:
	for file in $(shell find $(CURDIR)/7.2/stretch -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker build -t my/php:7.2-stretch-$$d 7.2/stretch/$$d; \
	done

.PHONY: 7.2-stretch-clean
7.2-stretch-clean:
	for file in $(shell find $(CURDIR)/7.2/stretch -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker rmi -f my/php:7.2-stretch-$$d; \
	done

.PHONY: 7.2-stretch-test-version
7.2-stretch-test-version:
	for file in $(shell find $(CURDIR)/7.2/stretch -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker run -it --rm my/php:7.2-stretch-$$d php --version; \
	done

.PHONY: 7.2-stretch-test-info
7.2-stretch-test-info:
	for file in $(shell find $(CURDIR)/7.2/stretch -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		search=$$(echo $$d | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:7.2-stretch-$$d php -i \
			| grep "$$search"; \
	done

# 7.2-alpine3.9

.PHONY: 7.2-alpine3.9
7.2-alpine3.9: 7.2-alpine3.9-build 7.2-alpine3.9-test-version 7.2-alpine3.9-test-info

.PHONY: 7.2-alpine3.9-build
7.2-alpine3.9-build:
	for file in $(shell find $(CURDIR)/7.2/alpine3.9 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker build -t my/php:7.2-alpine3.9-$$d 7.2/alpine3.9/$$d; \
	done

.PHONY: 7.2-alpine3.9-clean
7.2-alpine3.9-clean:
	for file in $(shell find $(CURDIR)/7.2/alpine3.9 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker rmi -f my/php:7.2-alpine3.9-$$d; \
	done

.PHONY: 7.2-alpine3.9-test-version
7.2-alpine3.9-test-version:
	for file in $(shell find $(CURDIR)/7.2/alpine3.9 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker run -it --rm my/php:7.2-alpine3.9-$$d php --version; \
	done

.PHONY: 7.2-alpine3.9-test-info
7.2-alpine3.9-test-info:
	for file in $(shell find $(CURDIR)/7.2/alpine3.9 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		search=$$(echo $$d | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:7.2-alpine3.9-$$d php -i \
			| grep "$$search"; \
	done

# 7.3-stretch

.PHONY: 7.3-stretch
7.3-stretch: 7.3-stretch-build 7.3-stretch-test-version 7.3-stretch-test-info

.PHONY: 7.3-stretch-build
7.3-stretch-build:
	for file in $(shell find $(CURDIR)/7.3/stretch -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker build -t my/php:7.3-stretch-$$d 7.3/stretch/$$d; \
	done

.PHONY: 7.3-stretch-clean
7.3-stretch-clean:
	for file in $(shell find $(CURDIR)/7.3/stretch -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker rmi -f my/php:7.3-stretch-$$d; \
	done

.PHONY: 7.3-stretch-test-version
7.3-stretch-test-version:
	for file in $(shell find $(CURDIR)/7.3/stretch -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker run -it --rm my/php:7.3-stretch-$$d php --version; \
	done

.PHONY: 7.3-stretch-test-info
7.3-stretch-test-info:
	for file in $(shell find $(CURDIR)/7.3/stretch -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		search=$$(echo $$d | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:7.3-stretch-$$d php -i \
			| grep "$$search"; \
	done

# 7.3-alpine3.9

.PHONY: 7.3-alpine3.9
7.3-alpine3.9: 7.3-alpine3.9-build 7.3-alpine3.9-test-version 7.3-alpine3.9-test-info

.PHONY: 7.3-alpine3.9-build
7.3-alpine3.9-build:
	for file in $(shell find $(CURDIR)/7.3/alpine3.9 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker build -t my/php:7.3-alpine3.9-$$d 7.3/alpine3.9/$$d; \
	done

.PHONY: 7.3-alpine3.9-clean
7.3-alpine3.9-clean:
	for file in $(shell find $(CURDIR)/7.3/alpine3.9 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker rmi -f my/php:7.3-alpine3.9-$$d; \
	done

.PHONY: 7.3-alpine3.9-test-version
7.3-alpine3.9-test-version:
	for file in $(shell find $(CURDIR)/7.3/alpine3.9 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		docker run -it --rm my/php:7.3-alpine3.9-$$d php --version; \
	done

.PHONY: 7.3-alpine3.9-test-info
7.3-alpine3.9-test-info:
	for file in $(shell find $(CURDIR)/7.3/alpine3.9 -type f); do \
		d=$$(basename $$(dirname $$file)); \
		echo "-=-=- $$d"; \
		search=$$(echo $$d | sed -e 's|pecl_||'); \
		docker run -it --rm my/php:7.3-alpine3.9-$$d php -i \
			| grep "$$search"; \
	done
