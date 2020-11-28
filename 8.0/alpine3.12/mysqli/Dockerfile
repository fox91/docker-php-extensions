FROM php:8.0-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# mysqli
RUN docker-php-ext-install -j$(nproc) mysqli
