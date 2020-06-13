FROM php:7.4-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# gd
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
  apk add --no-cache --virtual .gd-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .gd-build-deps $buildDeps; \
  docker-php-ext-configure gd \
    --with-freetype \
    --with-jpeg \
    --with-webp \
    --with-xpm; \
  docker-php-ext-install -j$(nproc) gd; \
  apk del .gd-build-deps
