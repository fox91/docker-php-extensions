FROM php:8.1-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-xdebug
ARG PHPEXT_XDEBUG_VERSION=3.3.2
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext xdebug-${PHPEXT_XDEBUG_VERSION}; \
  docker-php-ext-install -j$(nproc) xdebug; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
