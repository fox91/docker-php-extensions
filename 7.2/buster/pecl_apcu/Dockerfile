FROM php:7.2-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_APCU_VERSION 5.1.18

# pecl install apcu
RUN set -ex; \
  pecl install apcu-$PECL_APCU_VERSION; \
  docker-php-ext-enable apcu
