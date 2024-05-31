FROM php:8.3-alpine3.19

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-gearman
ARG PHPEXT_GEARMAN_VERSION=2.1.2
RUN set -eux; \
  { \
    echo 'https://dl-cdn.alpinelinux.org/alpine/edge/main'; \
    echo 'https://dl-cdn.alpinelinux.org/alpine/edge/community'; \
    echo 'https://dl-cdn.alpinelinux.org/alpine/edge/testing'; \
  } >> /etc/apk/repositories; \
  persistentDeps=" \
    gearman-libs \
  "; \
  buildDeps=" \
    gearman-dev \
  "; \
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
