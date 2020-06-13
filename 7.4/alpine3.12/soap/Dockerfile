FROM php:7.4-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

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
