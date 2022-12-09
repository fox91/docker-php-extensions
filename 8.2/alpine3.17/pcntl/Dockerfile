FROM php:8.2-alpine3.17

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-pcntl
RUN docker-php-ext-install -j$(nproc) pcntl
