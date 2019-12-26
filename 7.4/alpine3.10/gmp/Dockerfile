FROM php:7.4-alpine3.10

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# gmp
RUN set -ex; \
  persistentDeps=" \
    gmp \
  "; \
  buildDeps=" \
    gmp-dev \
  "; \
  apk add --no-cache --virtual .gmp-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .gmp-build-deps $buildDeps; \
  docker-php-ext-install -j$(nproc) gmp; \
  apk del .gmp-build-deps
