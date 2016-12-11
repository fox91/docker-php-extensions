FROM php:5.6
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# mcrypt
RUN persistentDeps=" \
    libmcrypt4 \
  " \
  && buildDeps=" \
    libmcrypt-dev \
  " \
  && set -ex \
  && DEBIAN_FRONTEND=noninteractive apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends \
  && docker-php-ext-install -j$(nproc) mcrypt \
  && DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
