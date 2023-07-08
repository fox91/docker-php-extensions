FROM php:8.2-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-pgsql
RUN set -eux; \
  persistentDeps=" \
    libpq \
  "; \
  buildDeps=" \
    postgresql-dev \
  "; \
  apk add --no-cache --virtual .pgsql-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .pgsql-build-deps ${buildDeps}; \
  \
  docker-php-ext-install -j$(nproc) pgsql; \
  \
  apk del --no-cache --no-network .pgsql-build-deps
