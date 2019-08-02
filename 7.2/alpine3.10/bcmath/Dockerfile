FROM php:7.2-alpine3.10

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# bcmath
RUN docker-php-ext-install -j$(nproc) bcmath
