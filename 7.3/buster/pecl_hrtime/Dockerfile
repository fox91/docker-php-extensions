FROM php:7.3-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_HRTIME_VERSION 0.6.0

# pecl install hrtime
RUN set -eux; \
  pecl install hrtime-$PECL_HRTIME_VERSION; \
  docker-php-ext-enable hrtime
