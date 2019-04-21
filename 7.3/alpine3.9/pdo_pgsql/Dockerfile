FROM php:7.3-alpine3.9
MAINTAINER Andrea Falco <fox91fox@gmail.com>

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
