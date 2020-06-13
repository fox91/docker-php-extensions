FROM php:7.3-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_XDEBUG_VERSION 2.9.6

# pecl install xdebug
RUN set -eux; \
  pecl install xdebug-$PECL_XDEBUG_VERSION; \
  docker-php-ext-enable xdebug
