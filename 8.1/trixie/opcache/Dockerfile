FROM php:8.1-trixie

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-opcache
RUN docker-php-ext-install -j$(nproc) opcache
