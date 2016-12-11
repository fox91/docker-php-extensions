FROM php:5.6
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# gd
RUN persistentDeps=" \
    libfreetype6 \
    libjpeg62-turbo \
    libpng12-0 \
    libvpx1 \
    libxpm4 \
  " \
  && buildDeps=" \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng12-dev \
    libvpx-dev \
    libxpm-dev \
  " \
  && set -ex \
  && DEBIAN_FRONTEND=noninteractive apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends \
  && docker-php-ext-configure gd \
    --with-jpeg-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-xpm-dir=/usr/include/ \
    --with-vpx-dir=/usr/include/ \
    --with-freetype-dir=/usr/include/ \
    --enable-gd-native-ttf \
  && docker-php-ext-install gd \
  && DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
