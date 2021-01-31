FROM php:8.0-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_MONGODB_VERSION=1.9.0

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
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable mongodb; \
  apk del .mongodb-build-deps
