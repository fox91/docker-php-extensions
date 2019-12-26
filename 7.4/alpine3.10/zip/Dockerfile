FROM php:7.4-alpine3.10

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# zip
RUN set -ex; \
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
