FROM php:7.4-alpine3.14

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-redis
ARG PHPEXT_REDIS_VERSION=5.3.4
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext redis-${PHPEXT_REDIS_VERSION}; \
  docker-php-ext-install -j$(nproc) redis; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
