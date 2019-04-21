FROM php:7.2-alpine3.9
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# intl
RUN set -ex; \
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
