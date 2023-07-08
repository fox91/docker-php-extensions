FROM php:8.1-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-pdo_pgsql
RUN set -eux; \
  persistentDeps=" \
    libpq \
  "; \
  buildDeps=" \
    postgresql-dev \
  "; \
  apk add --no-cache --virtual .pdo_pgsql-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .pdo_pgsql-build-deps ${buildDeps}; \
  \
  docker-php-ext-install -j$(nproc) pdo_pgsql; \
  \
  apk del --no-cache --no-network .pdo_pgsql-build-deps
