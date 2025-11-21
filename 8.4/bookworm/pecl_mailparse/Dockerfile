FROM php:8.4-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-mailparse
ARG PHPEXT_MAILPARSE_VERSION=3.1.9
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext mailparse-${PHPEXT_MAILPARSE_VERSION}; \
  docker-php-ext-install -j$(nproc) mailparse; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
