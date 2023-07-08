FROM php:8.1-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-sockets
RUN docker-php-ext-install -j$(nproc) sockets
