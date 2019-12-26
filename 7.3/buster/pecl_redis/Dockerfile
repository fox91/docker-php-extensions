FROM php:7.3-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_REDIS_VERSION 5.1.1

# pecl install redis
RUN set -ex; \
  pecl install redis-$PECL_REDIS_VERSION; \
  docker-php-ext-enable redis
