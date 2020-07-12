FROM php:7.2-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_HRTIME_VERSION 0.6.0

# pecl install hrtime
RUN set -eux; \
  pecl install hrtime-$PECL_HRTIME_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable hrtime
