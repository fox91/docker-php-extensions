FROM php:5.6-stretch
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_SPLTYPES_VERSION 0.4.0

# pecl install spl_types
RUN set -ex \
  && pecl install spl_types-$PECL_SPLTYPES_VERSION \
  && docker-php-ext-enable spl_types
