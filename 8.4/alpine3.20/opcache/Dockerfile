FROM php:8.4-alpine3.20

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-opcache
RUN docker-php-ext-install -j$(nproc) opcache
