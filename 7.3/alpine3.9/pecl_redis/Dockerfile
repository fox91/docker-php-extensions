FROM php:7.3-alpine3.9
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_REDIS_VERSION 4.2.0

# pecl install redis
RUN buildDeps=" \
    ${PHPIZE_DEPS} \
  " \
  && set -ex \
  && apk add --no-cache --virtual .redis-build-deps $buildDeps \
  && pecl install redis-$PECL_REDIS_VERSION \
  && docker-php-ext-enable redis \
  && apk del .redis-build-deps
