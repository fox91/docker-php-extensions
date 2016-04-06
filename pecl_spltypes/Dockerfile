FROM php:5.6
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_SPLTYPES_VERSION 0.4.0

# pecl install spl_types
RUN set -ex \
 && curl -sSL "https://pecl.php.net/get/SPL_Types-$PECL_SPLTYPES_VERSION.tgz" -o spl_types.tar.gz \
 && mkdir -p /usr/src/php/ext/spl_types \
 && tar -xzC /usr/src/php/ext/spl_types --strip-components=1 -f spl_types.tar.gz \
 && rm spl_types.tar.gz* \
 && docker-php-ext-install spl_types \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
