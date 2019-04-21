FROM php:7.3-alpine3.9
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# soap
RUN set -ex; \
  persistentDeps=" \
    libxml2 \
  "; \
  buildDeps=" \
    libxml2-dev \
  "; \
  apk add --no-cache --virtual .soap-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .soap-build-deps $buildDeps; \
  docker-php-ext-install -j$(nproc) soap; \
  apk del .soap-build-deps
