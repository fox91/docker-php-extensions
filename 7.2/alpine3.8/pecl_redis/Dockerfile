FROM php:7.2-alpine3.8
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_REDIS_VERSION 4.1.1

# pecl install redis
RUN buildDeps=" \
    ${PHPIZE_DEPS} \
  " \
  && set -ex \
  && apk add --no-cache --virtual .build-deps $buildDeps \
  && pecl install redis-$PECL_REDIS_VERSION \
  && docker-php-ext-enable redis \
  && apk del .build-deps
