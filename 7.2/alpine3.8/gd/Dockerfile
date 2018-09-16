FROM php:7.2-alpine3.8
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# gd
RUN persistentDeps=" \
    libjpeg-turbo \
    libpng \
    libvpx \
    libxpm \
  " \
  && buildDeps=" \
    libjpeg-turbo-dev \
    libpng-dev \
    libvpx-dev \
    libxpm-dev \
  " \
  && set -ex \
  && apk add --no-cache --virtual .persistent-deps $persistentDeps \
  && apk add --no-cache --virtual .build-deps $buildDeps \
  && docker-php-ext-configure gd \
    --with-jpeg-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-xpm-dir=/usr/include/ \
    --with-vpx-dir=/usr/include/ \
    --enable-gd-native-ttf \
  && docker-php-ext-install -j$(nproc) gd \
  && apk del .build-deps
