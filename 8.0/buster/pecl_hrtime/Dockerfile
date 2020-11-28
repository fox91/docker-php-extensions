FROM php:8.0-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_HRTIME_VERSION=0.6.0

# pecl install hrtime
RUN set -eux; \
  pecl install hrtime-$PECL_HRTIME_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable hrtime
