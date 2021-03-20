FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-xhprof
ARG PHPEXT_XHPROF_VERSION=2.2.3
RUN set -eux; \
  pecl bundle -d /tmp/ext xhprof-${PHPEXT_XHPROF_VERSION}; \
  mkdir -p /usr/src/php/ext; \
  mv /tmp/ext/xhprof/extension /usr/src/php/ext/xhprof; \
  docker-php-ext-install -j$(nproc) xhprof; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
