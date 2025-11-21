FROM php:8.5-trixie

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-xdebug
# TODO: Temporary installation from xdebug.org instead of PECL.
#       Version 3.5.0alpha3 supports PHP 8.5 but is not yet published on PECL.
#       Revert to standard PECL installation once available on pecl.php.net.
#       See: https://bugs.xdebug.org/view.php?id=2388
ARG PHPEXT_XDEBUG_VERSION=3.5.0alpha3
RUN set -eux; \
  cd /tmp; \
  curl -fsSL "https://xdebug.org/files/xdebug-${PHPEXT_XDEBUG_VERSION}.tgz" -o xdebug.tgz; \
  tar -xzf xdebug.tgz; \
  cd xdebug-${PHPEXT_XDEBUG_VERSION}; \
  phpize; \
  ./configure; \
  make -j$(nproc); \
  make install; \
  docker-php-ext-enable xdebug; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
