FROM php:8.1-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-intl
RUN set -eux; \
  persistentDeps=" \
    icu \
  "; \
  buildDeps=" \
    icu-dev \
  "; \
  apk add --no-cache --virtual .intl-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .intl-build-deps ${buildDeps}; \
  \
  docker-php-ext-install -j$(nproc) intl; \
  \
  apk del --no-cache --no-network .intl-build-deps
