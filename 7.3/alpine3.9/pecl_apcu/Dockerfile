FROM php:7.3-alpine3.9
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_APCU_VERSION 5.1.16

# pecl install apcu
RUN buildDeps=" \
    ${PHPIZE_DEPS} \
  " \
  && set -ex \
  && apk add --no-cache --virtual .apcu-build-deps $buildDeps \
  && pecl install apcu-$PECL_APCU_VERSION \
  && docker-php-ext-enable apcu \
  && apk del .apcu-build-deps
