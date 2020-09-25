FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# sysvshm
RUN docker-php-ext-install -j$(nproc) sysvshm
