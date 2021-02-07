FROM php:7.3-alpine3.13

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-gd
RUN set -eux; \
  persistentDeps=" \
    freetype \
    libjpeg-turbo \
    libpng \
    libwebp \
    libxpm \
  "; \
  buildDeps=" \
    freetype-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    libwebp-dev \
    libxpm-dev \
  "; \
  apk add --no-cache --virtual .gd-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .gd-build-deps ${buildDeps}; \
  \
  docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-webp-dir=/usr/include/ \
    --with-xpm-dir=/usr/include/ \
  ; \
  docker-php-ext-install -j$(nproc) gd; \
  \
  apk del --no-cache --no-network .gd-build-deps
