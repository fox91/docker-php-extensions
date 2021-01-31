FROM php:7.3-alpine3.13

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# zip
RUN set -eux; \
  persistentDeps=" \
    libzip \
  "; \
  buildDeps=" \
    libzip-dev \
  "; \
  apk add --no-cache --virtual .zip-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .zip-build-deps $buildDeps; \
  docker-php-ext-install -j$(nproc) zip; \
  apk del .zip-build-deps
