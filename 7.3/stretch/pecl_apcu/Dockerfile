FROM php:7.3-stretch
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_APCU_VERSION 5.1.16

# pecl install apcu
RUN set -ex \
  && pecl install apcu-$PECL_APCU_VERSION \
  && docker-php-ext-enable apcu
