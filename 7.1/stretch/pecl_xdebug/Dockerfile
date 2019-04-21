FROM php:7.1-stretch
MAINTAINER Andrea Falco <fox91fox@gmail.com>

ENV PECL_XDEBUG_VERSION 2.7.1

# pecl install xdebug
RUN set -ex; \
  pecl install xdebug-$PECL_XDEBUG_VERSION; \
  docker-php-ext-enable xdebug
