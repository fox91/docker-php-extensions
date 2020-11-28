FROM php:7.4-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_XDEBUG_VERSION=2.9.8

# pecl install xdebug
RUN set -eux; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
  "; \
  apk add --no-cache --virtual .xdebug-build-deps $buildDeps; \
  pecl install xdebug-$PECL_XDEBUG_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable xdebug; \
  apk del .xdebug-build-deps
