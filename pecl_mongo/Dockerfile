FROM php:5.6
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_MONGO_VERSION 1.6.12

# pecl install mongo
RUN buildDeps=" \
     libssl-dev \
 " \
 && set -x \
 && DEBIAN_FRONTEND=noninteractive apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y $buildDeps --no-install-recommends \
 && curl -SL "http://pecl.php.net/get/mongo-$PECL_MONGO_VERSION.tgz" -o mongo.tar.gz \
 && mkdir -p /usr/src/php/ext/mongo \
 && tar -xzC /usr/src/php/ext/mongo --strip-components=1 -f mongo.tar.gz \
 && rm mongo.tar.gz* \
 && docker-php-ext-install mongo \
 && DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
