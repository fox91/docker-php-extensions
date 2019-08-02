FROM php:7.1-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# gd
RUN set -ex; \
  persistentDeps=" \
    libfreetype6 \
    libjpeg62-turbo \
    libpng16-16 \
    libvpx4 \
    libxpm4 \
  "; \
  buildDeps=" \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libvpx-dev \
    libxpm-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  docker-php-ext-configure gd \
    --with-jpeg-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-xpm-dir=/usr/include/ \
    --with-vpx-dir=/usr/include/ \
    --with-freetype-dir=/usr/include/ \
    --enable-gd-native-ttf; \
  docker-php-ext-install -j$(nproc) gd; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
