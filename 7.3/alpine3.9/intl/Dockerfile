FROM php:7.3-alpine3.9
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# intl
RUN persistentDeps=" \
    icu \
  " \
  && buildDeps=" \
    icu-dev \
  " \
  && set -ex \
  && apk add --no-cache --virtual .intl-persistent-deps $persistentDeps \
  && apk add --no-cache --virtual .intl-build-deps $buildDeps \
  && docker-php-ext-install -j$(nproc) intl \
  && apk del .intl-build-deps
