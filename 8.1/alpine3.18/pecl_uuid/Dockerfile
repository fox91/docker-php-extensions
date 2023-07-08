FROM php:8.1-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-uuid
ARG PHPEXT_UUID_VERSION=1.2.0
RUN set -eux; \
  persistentDeps=" \
    util-linux \
  "; \
  buildDeps=" \
    util-linux-dev \
  "; \
  apk add --no-cache --virtual .uuid-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .uuid-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext uuid-${PHPEXT_UUID_VERSION}; \
  docker-php-ext-install -j$(nproc) uuid; \
  \
  apk del --no-cache --no-network .uuid-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
