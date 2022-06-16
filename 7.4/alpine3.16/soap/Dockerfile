FROM php:7.4-alpine3.16

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-soap
RUN set -eux; \
  persistentDeps=" \
    libxml2 \
  "; \
  buildDeps=" \
    libxml2-dev \
  "; \
  apk add --no-cache --virtual .soap-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .soap-build-deps ${buildDeps}; \
  \
  docker-php-ext-install -j$(nproc) soap; \
  \
  apk del --no-cache --no-network .soap-build-deps
