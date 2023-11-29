FROM php:8.3-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-SeasLog
ARG PHPEXT_SEASLOG_VERSION=2.2.0
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext seaslog-${PHPEXT_SEASLOG_VERSION}; \
  docker-php-ext-install -j$(nproc) SeasLog; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
