FROM php:8.2-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-newrelic
ARG PHPEXT_NEWRELIC_VERSION=10.14.0.3
RUN set -eux; \
  curl -fsSL https://download.newrelic.com/php_agent/release/newrelic-php5-${PHPEXT_NEWRELIC_VERSION}-linux-musl.tar.gz \
    | tar -xzC /tmp; \
  export NR_INSTALL_USE_CP_NOT_LN=1; \
  /tmp/newrelic-php5-*/newrelic-install install; \
  \
  sed -i \
    -e 's/"REPLACE_WITH_REAL_KEY"/"YOUR_LICENSE_KEY"/' \
    -e 's/newrelic.appname = "PHP Application"/newrelic.appname = "YOUR_APPLICATION_NAME"/' \
    -e 's/;newrelic.daemon.app_connect_timeout =.*/newrelic.daemon.app_connect_timeout=15s/' \
    -e 's/;newrelic.daemon.start_timeout =.*/newrelic.daemon.start_timeout=5s/' \
    /usr/local/etc/php/conf.d/newrelic.ini \
  ; \
  \
  rm -rf /tmp/* /var/tmp/*
