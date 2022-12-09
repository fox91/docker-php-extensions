FROM php:8.2-bullseye

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-sockets
RUN docker-php-ext-install -j$(nproc) sockets
