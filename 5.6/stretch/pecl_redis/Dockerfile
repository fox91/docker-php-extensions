FROM php:5.6-stretch
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_REDIS_VERSION 2.2.8

# pecl install redis
RUN set -ex \
  && pecl install redis-$PECL_REDIS_VERSION \
  && docker-php-ext-enable redis
