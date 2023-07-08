FROM php:8.2-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-memcached
ARG PHPEXT_MEMCACHED_VERSION=3.2.0
RUN set -eux; \
  persistentDeps=" \
    libmemcached \
    libzip \
  "; \
  buildDeps=" \
    libmemcached-dev \
    libzip-dev \
  "; \
  apk add --no-cache --virtual .memcached-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .memcached-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext memcached-${PHPEXT_MEMCACHED_VERSION}; \
  docker-php-ext-install -j$(nproc) memcached; \
  \
  apk del --no-cache --no-network .memcached-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
