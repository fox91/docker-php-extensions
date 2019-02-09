FROM php:7.2-alpine3.9
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_MCRYPT_VERSION 1.0.2

# pecl install mcrypt
RUN persistentDeps=" \
    libmcrypt \
  " \
  && buildDeps=" \
    ${PHPIZE_DEPS} \
    libmcrypt-dev \
  " \
  && set -ex \
  && apk add --no-cache --virtual .mcrypt-persistent-deps $persistentDeps \
  && apk add --no-cache --virtual .build-deps $buildDeps \
  && pecl install mcrypt-$PECL_MCRYPT_VERSION \
  && docker-php-ext-enable mcrypt \
  && apk del .build-deps
