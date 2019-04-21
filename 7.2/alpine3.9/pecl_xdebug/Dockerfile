FROM php:7.2-alpine3.9
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_XDEBUG_VERSION 2.7.1

# pecl install xdebug
RUN buildDeps=" \
    ${PHPIZE_DEPS} \
  "; \
  apk add --no-cache --virtual .xdebug-build-deps $buildDeps; \
  pecl install xdebug-$PECL_XDEBUG_VERSION; \
  docker-php-ext-enable xdebug; \
  apk del .xdebug-build-deps
