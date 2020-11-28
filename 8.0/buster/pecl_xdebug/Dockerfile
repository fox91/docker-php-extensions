FROM php:8.0-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_XDEBUG_VERSION=3.0.0

# pecl install xdebug
RUN set -eux; \
  pecl install xdebug-$PECL_XDEBUG_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable xdebug
