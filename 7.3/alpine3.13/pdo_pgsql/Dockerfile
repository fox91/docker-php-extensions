FROM php:7.3-alpine3.13

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
