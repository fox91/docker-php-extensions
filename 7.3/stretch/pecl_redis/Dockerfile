FROM php:7.3-stretch
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_REDIS_VERSION 4.2.0

# pecl install redis
RUN set -ex \
  && pecl install redis-$PECL_REDIS_VERSION \
  && docker-php-ext-enable redis
