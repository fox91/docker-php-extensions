FROM php:7.1-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_REDIS_VERSION 4.3.0

# pecl install redis
RUN set -ex; \
  pecl install redis-$PECL_REDIS_VERSION; \
  docker-php-ext-enable redis
