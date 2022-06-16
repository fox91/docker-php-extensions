FROM php:7.4-alpine3.16

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-gearman
ARG PHPEXT_GEARMAN_VERSION=2.1.0
RUN set -eux; \
  persistentDeps=" \
    gearman-libs \
  "; \
  buildDeps=" \
    gearman-dev \
  "; \
  echo https://dl-cdn.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories; \
  echo https://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories; \
  echo https://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories; \
  \
  apk add --no-cache --virtual .gearman-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .gearman-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext gearman-${PHPEXT_GEARMAN_VERSION}; \
  docker-php-ext-install -j$(nproc) gearman; \
  \
  apk del --no-cache --no-network .gearman-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
