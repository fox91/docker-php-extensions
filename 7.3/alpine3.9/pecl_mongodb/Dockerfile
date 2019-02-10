FROM php:7.3-alpine3.9
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_MONGODB_VERSION 1.5.3

# pecl install mongodb
RUN persistentDeps=" \
    openssl \
  " \
  && buildDeps=" \
    ${PHPIZE_DEPS} \
    openssl-dev \
  " \
  && set -ex \
  && apk add --no-cache --virtual .mongodb-persistent-deps $persistentDeps \
  && apk add --no-cache --virtual .mongodb-build-deps $buildDeps \
  && pecl install mongodb-$PECL_MONGODB_VERSION \
  && docker-php-ext-enable mongodb \
  && apk del .mongodb-build-deps
