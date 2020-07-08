FROM php:7.4-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# pcntl
RUN docker-php-ext-install -j$(nproc) pcntl
