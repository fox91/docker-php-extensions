FROM php:7.3-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_ZIP_VERSION=1.19.0

# pecl install zip
RUN set -eux; \
  persistentDeps=" \
    libzip \
  "; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
    libzip-dev \
  "; \
  apk add --no-cache --virtual .zip-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .zip-build-deps $buildDeps; \
  pecl install zip-$PECL_ZIP_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable zip; \
  apk del .zip-build-deps
