FROM php:5.6
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_MONGODB_VERSION 1.1.5

# pecl install mongodb
RUN buildDeps=" \
     libssl-dev \
 " \
 && set -ex \
 && DEBIAN_FRONTEND=noninteractive apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y $buildDeps --no-install-recommends \
 && curl -sSL "https://pecl.php.net/get/mongodb-$PECL_MONGODB_VERSION.tgz" -o mongodb.tar.gz \
 && mkdir -p /usr/src/php/ext/mongodb \
 && tar -xzC /usr/src/php/ext/mongodb --strip-components=1 -f mongodb.tar.gz \
 && rm mongodb.tar.gz* \
 && docker-php-ext-install mongodb \
 && DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
