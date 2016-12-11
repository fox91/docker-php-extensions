FROM php:7.0
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# intl
RUN persistentDeps=" \
    libicu52 \
  " \
  && buildDeps=" \
    libicu-dev \
  " \
  && set -ex \
  && DEBIAN_FRONTEND=noninteractive apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends \
  && docker-php-ext-install -j$(nproc) intl \
  && DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
