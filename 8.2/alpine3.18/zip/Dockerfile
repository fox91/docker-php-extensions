FROM php:8.2-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-zip
RUN set -eux; \
  persistentDeps=" \
    libzip \
  "; \
  buildDeps=" \
    libzip-dev \
  "; \
  apk add --no-cache --virtual .zip-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .zip-build-deps ${buildDeps}; \
  \
  docker-php-ext-install -j$(nproc) zip; \
  \
  apk del --no-cache --no-network .zip-build-deps
