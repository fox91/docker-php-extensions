FROM php:8.3-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-gmp
RUN set -eux; \
  persistentDeps=" \
    gmp \
  "; \
  buildDeps=" \
    gmp-dev \
  "; \
  apk add --no-cache --virtual .gmp-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .gmp-build-deps ${buildDeps}; \
  \
  docker-php-ext-install -j$(nproc) gmp; \
  \
  apk del --no-cache --no-network .gmp-build-deps
