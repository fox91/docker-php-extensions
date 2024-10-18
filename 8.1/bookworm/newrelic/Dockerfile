FROM php:8.1-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-newrelic
RUN set -eux; \
  # Discover the latest released version:
  export NEW_RELIC_AGENT_VERSION=$(curl -fsSL https://download.newrelic.com/php_agent/release/ | grep -o '[1-9][0-9]\?\(\.[0-9]\+\)\{3\}' | head -n1); \
  # Discover libc provider
  export NR_INSTALL_PLATFORM=$(ldd --version 2>&1 | grep -q musl && echo "linux-musl" || echo "linux"); \
  \
  # Download the discovered version:
  curl -fsSL https://download.newrelic.com/php_agent/release/newrelic-php5-${NEW_RELIC_AGENT_VERSION}-${NR_INSTALL_PLATFORM}.tar.gz \
    | tar -xzC /tmp; \
  # Install the downloaded agent:
  NR_INSTALL_USE_CP_NOT_LN=1 NR_INSTALL_SILENT=0 /tmp/newrelic-php5-*/newrelic-install install; \
  \
  # Configure the agent to use license key from NEW_RELIC_LICENSE_KEY env var:
  sed -ie 's/[ ;]*newrelic.license[[:space:]]=.*/newrelic.license=${NEW_RELIC_LICENSE_KEY}/' $(php-config --ini-dir)/newrelic.ini; \
  # Configure the agent to use app name from NEW_RELIC_APP_NAME env var:
  sed -ie 's/[ ;]*newrelic.appname[[:space:]]=.*/newrelic.appname=${NEW_RELIC_APP_NAME}/' $(php-config --ini-dir)/newrelic.ini; \
  \
  # Cleanup temporary files:
  rm -rf /tmp/* /var/tmp/*
