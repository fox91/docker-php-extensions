FROM php:8.3-alpine3.19

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-xdebug
ARG PHPEXT_XDEBUG_VERSION=3.3.2
RUN set -eux; \
  buildDeps=" \
    linux-headers \
  "; \
  \
  apk add --no-cache --virtual .xdebug-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext xdebug-${PHPEXT_XDEBUG_VERSION}; \
  docker-php-ext-install -j$(nproc) xdebug; \
  \
  apk del --no-cache --no-network .xdebug-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
