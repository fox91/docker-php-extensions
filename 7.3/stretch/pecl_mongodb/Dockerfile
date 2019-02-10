FROM php:7.3-stretch
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_MONGODB_VERSION 1.5.3

# pecl install mongodb
RUN buildDeps=" \
    libssl-dev \
  " \
  && set -ex \
  && DEBIAN_FRONTEND=noninteractive apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y $buildDeps --no-install-recommends \
  && pecl install mongodb-$PECL_MONGODB_VERSION \
  && docker-php-ext-enable mongodb \
  && DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
