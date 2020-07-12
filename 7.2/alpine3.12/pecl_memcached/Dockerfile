FROM php:7.2-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_MEMCACHED_VERSION=3.1.5

# pecl install memcached
RUN set -eux; \
  persistentDeps=" \
    libmemcached \
    libzip \
  "; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
    libmemcached-dev \
    libzip-dev \
  "; \
  apk add --no-cache --virtual .memcached-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .memcached-build-deps $buildDeps; \
  pecl install memcached-$PECL_MEMCACHED_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable memcached; \
  apk del .memcached-build-deps
