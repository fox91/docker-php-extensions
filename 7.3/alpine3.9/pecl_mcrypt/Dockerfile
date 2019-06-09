FROM php:7.3-alpine3.9

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

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
