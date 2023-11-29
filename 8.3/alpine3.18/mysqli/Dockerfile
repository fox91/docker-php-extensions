FROM php:8.3-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-mysqli
RUN docker-php-ext-install -j$(nproc) mysqli
