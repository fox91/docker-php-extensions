FROM php:7.2-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_XDEBUG_VERSION 2.9.0

# pecl install xdebug
RUN set -ex; \
  pecl install xdebug-$PECL_XDEBUG_VERSION; \
  docker-php-ext-enable xdebug
