FROM php:7.3-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_IMAGICK_VERSION=3.4.4

# pecl install imagick
RUN set -eux; \
  persistentDeps=" \
    libmagickwand-6.q16-6 \
  "; \
  buildDeps=" \
    libmagickwand-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  pecl install imagick-$PECL_IMAGICK_VERSION; \
  docker-php-ext-enable imagick; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*