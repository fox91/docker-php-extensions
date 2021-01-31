FROM php:7.4-alpine3.13

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# pdo_pgsql
RUN set -eux; \
  persistentDeps=" \
    libpq \
  "; \
  buildDeps=" \
    postgresql-dev \
  "; \
  apk add --no-cache --virtual .pdo_pgsql-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .pdo_pgsql-build-deps $buildDeps; \
  docker-php-ext-install -j$(nproc) pdo_pgsql; \
  apk del .pdo_pgsql-build-deps
