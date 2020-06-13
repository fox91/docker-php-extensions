FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_REDIS_VERSION 5.2.2

# pecl install redis
RUN set -eux; \
  pecl install redis-$PECL_REDIS_VERSION; \
  docker-php-ext-enable redis
