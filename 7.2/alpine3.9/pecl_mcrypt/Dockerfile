FROM php:7.2-alpine3.9
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_MCRYPT_VERSION 1.0.2

# pecl install mcrypt
RUN set -ex; \
  persistentDeps=" \
    libmcrypt \
  "; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
    libmcrypt-dev \
  "; \
  apk add --no-cache --virtual .mcrypt-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .mcrypt-build-deps $buildDeps; \
  pecl install mcrypt-$PECL_MCRYPT_VERSION; \
  docker-php-ext-enable mcrypt; \
  apk del .mcrypt-build-deps
