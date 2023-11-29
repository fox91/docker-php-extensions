FROM php:8.3-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-dbase
ARG PHPEXT_DBASE_VERSION=7.1.1
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext dbase-${PHPEXT_DBASE_VERSION}; \
  docker-php-ext-install -j$(nproc) dbase; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
