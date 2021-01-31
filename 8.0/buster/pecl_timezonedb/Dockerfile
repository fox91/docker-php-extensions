FROM php:8.0-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_TIMEZONEDB_VERSION=2021.1

# pecl install timezonedb
RUN set -eux; \
  pecl install timezonedb-$PECL_TIMEZONEDB_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable timezonedb
