FROM php:8.1-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-memcache
ARG PHPEXT_MEMCACHE_VERSION=8.2
RUN set -eux; \
  persistentDeps=" \
    libzip \
  "; \
  buildDeps=" \
    libzip-dev \
  "; \
  apk add --no-cache --virtual .memcache-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .memcache-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext memcache-${PHPEXT_MEMCACHE_VERSION}; \
  docker-php-ext-install -j$(nproc) memcache; \
  \
  apk del --no-cache --no-network .memcache-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
