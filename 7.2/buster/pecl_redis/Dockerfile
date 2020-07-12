FROM php:7.2-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_REDIS_VERSION 5.3.1

# pecl install redis
RUN set -eux; \
  pecl install redis-$PECL_REDIS_VERSION; \
  docker-php-ext-enable redis
