FROM php:7.2-stretch

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# opcache
RUN docker-php-ext-install -j$(nproc) opcache
