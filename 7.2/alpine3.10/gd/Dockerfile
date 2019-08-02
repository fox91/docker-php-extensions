FROM php:7.2-alpine3.10

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# gd
RUN set -ex; \
  persistentDeps=" \
    libjpeg-turbo \
    libpng \
    libvpx \
    libxpm \
  "; \
  buildDeps=" \
    libjpeg-turbo-dev \
    libpng-dev \
    libvpx-dev \
    libxpm-dev \
  "; \
  apk add --no-cache --virtual .gd-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .gd-build-deps $buildDeps; \
  docker-php-ext-configure gd \
    --with-jpeg-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-xpm-dir=/usr/include/ \
    --with-vpx-dir=/usr/include/ \
    --enable-gd-native-ttf; \
  docker-php-ext-install -j$(nproc) gd; \
  apk del .gd-build-deps
