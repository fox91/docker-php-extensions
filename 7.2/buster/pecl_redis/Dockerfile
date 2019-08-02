FROM php:7.2-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_REDIS_VERSION 5.0.2

# pecl install redis
RUN set -ex; \
  pecl install redis-$PECL_REDIS_VERSION; \
  docker-php-ext-enable redis
