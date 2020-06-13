FROM php:7.3-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_XDEBUG_VERSION 2.9.6

# pecl install xdebug
RUN set -eux; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
  "; \
  apk add --no-cache --virtual .xdebug-build-deps $buildDeps; \
  pecl install xdebug-$PECL_XDEBUG_VERSION; \
  docker-php-ext-enable xdebug; \
  apk del .xdebug-build-deps
