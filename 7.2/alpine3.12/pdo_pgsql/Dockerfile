FROM php:7.2-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# pdo_pgsql
RUN set -ex; \
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
