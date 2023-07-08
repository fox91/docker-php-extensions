FROM php:8.2-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-imagick
ARG PHPEXT_IMAGICK_VERSION=3.7.0
RUN set -eux; \
  persistentDeps=" \
    imagemagick-libs \
    libgomp \
  "; \
  buildDeps=" \
    imagemagick-dev \
  "; \
  apk add --no-cache --virtual .imagick-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .imagick-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext imagick-${PHPEXT_IMAGICK_VERSION}; \
  docker-php-ext-install -j$(nproc) imagick; \
  \
  apk del --no-cache --no-network .imagick-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
