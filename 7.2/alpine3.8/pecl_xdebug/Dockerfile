FROM php:7.2-alpine3.8
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_XDEBUG_VERSION 2.6.1

# pecl install xdebug
RUN buildDeps=" \
    ${PHPIZE_DEPS} \
  " \
  && set -ex \
  && apk add --no-cache --virtual .build-deps $buildDeps \
  && pecl install xdebug-$PECL_XDEBUG_VERSION \
  && docker-php-ext-enable xdebug \
  && apk del .build-deps
