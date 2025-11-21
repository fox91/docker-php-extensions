FROM php:8.2-trixie

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-opcache
RUN docker-php-ext-install -j$(nproc) opcache
