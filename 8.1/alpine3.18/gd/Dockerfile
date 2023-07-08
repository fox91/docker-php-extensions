FROM php:8.1-alpine3.18

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
    --with-freetype \
    --with-jpeg \
    --with-webp \
    --with-xpm \
  ; \
  docker-php-ext-install -j$(nproc) gd; \
  \
  apk del --no-cache --no-network .gd-build-deps
