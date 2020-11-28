FROM php:7.3-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_APCU_VERSION=5.1.19

# pecl install apcu
RUN set -eux; \
  pecl install apcu-$PECL_APCU_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable apcu
