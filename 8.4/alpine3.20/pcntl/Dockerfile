FROM php:8.4-rc-alpine3.20

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-pcntl
RUN docker-php-ext-install -j$(nproc) pcntl
