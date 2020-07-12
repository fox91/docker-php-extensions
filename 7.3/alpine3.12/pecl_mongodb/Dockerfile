FROM php:7.3-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_MONGODB_VERSION 1.7.5

# pecl install mongodb
RUN set -eux; \
  persistentDeps=" \
    openssl \
  "; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
    openssl-dev \
  "; \
  apk add --no-cache --virtual .mongodb-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .mongodb-build-deps $buildDeps; \
  pecl install mongodb-$PECL_MONGODB_VERSION; \
  docker-php-ext-enable mongodb; \
  apk del .mongodb-build-deps
