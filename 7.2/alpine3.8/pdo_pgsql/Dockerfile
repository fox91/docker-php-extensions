FROM php:7.2-alpine3.8
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# pdo_pgsql
RUN persistentDeps=" \
    libpq \
  " \
  && buildDeps=" \
    postgresql-dev \
  " \
  && set -ex \
  && apk add --no-cache --virtual .persistent-deps $persistentDeps \
  && apk add --no-cache --virtual .build-deps $buildDeps \
  && docker-php-ext-install -j$(nproc) pdo_pgsql \
  && apk del .build-deps
