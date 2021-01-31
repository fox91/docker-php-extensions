FROM php:7.3-alpine3.13

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# pcntl
RUN docker-php-ext-install -j$(nproc) pcntl
