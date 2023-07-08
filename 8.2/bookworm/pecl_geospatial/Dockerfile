FROM php:8.2-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-geospatial
ARG PHPEXT_GEOSPATIAL_VERSION=0.3.2
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext geospatial-${PHPEXT_GEOSPATIAL_VERSION}; \
  docker-php-ext-install -j$(nproc) geospatial; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
