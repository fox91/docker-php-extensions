FROM php:8.2-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-xhprof
ARG PHPEXT_XHPROF_VERSION=2.3.9
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext xhprof-${PHPEXT_XHPROF_VERSION}; \
  docker-php-ext-install -j$(nproc) xhprof/extension; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
