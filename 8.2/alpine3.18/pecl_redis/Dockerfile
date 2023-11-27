FROM php:8.2-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-redis
ARG PHPEXT_REDIS_VERSION=6.0.2
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext redis-${PHPEXT_REDIS_VERSION}; \
  docker-php-ext-install -j$(nproc) redis; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
