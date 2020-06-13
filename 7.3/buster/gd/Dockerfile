FROM php:7.3-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# gd
RUN set -eux; \
  persistentDeps=" \
    libfreetype6 \
    libjpeg62-turbo \
    libpng16-16 \
    libwebp6 \
    libxpm4 \
  "; \
  buildDeps=" \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libwebp-dev \
    libxpm-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-webp-dir=/usr/include/ \
    --with-xpm-dir=/usr/include/; \
  docker-php-ext-install -j$(nproc) gd; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
