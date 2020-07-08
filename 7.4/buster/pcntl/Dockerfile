FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# pcntl
RUN docker-php-ext-install -j$(nproc) pcntl
