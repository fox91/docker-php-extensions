FROM php:7.3-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_REDIS_VERSION=5.3.1

# pecl install redis
RUN set -eux; \
  pecl install redis-$PECL_REDIS_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable redis
