FROM php:7.4-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# intl
RUN set -eux; \
  persistentDeps=" \
    icu \
  "; \
  buildDeps=" \
    icu-dev \
  "; \
  apk add --no-cache --virtual .intl-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .intl-build-deps $buildDeps; \
  docker-php-ext-install -j$(nproc) intl; \
  apk del .intl-build-deps
