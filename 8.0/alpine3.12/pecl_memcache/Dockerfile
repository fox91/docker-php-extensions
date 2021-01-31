FROM php:8.0-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_MEMCACHE_VERSION=8.0

# pecl install memcache
RUN set -eux; \
  persistentDeps=" \
    libzip \
  "; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
    libzip-dev \
  "; \
  apk add --no-cache --virtual .memcache-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .memcache-build-deps $buildDeps; \
  pecl install memcache-$PECL_MEMCACHE_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable memcache; \
  apk del .memcache-build-deps
