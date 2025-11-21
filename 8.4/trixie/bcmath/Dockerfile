FROM php:8.4-trixie

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-bcmath
RUN docker-php-ext-install -j$(nproc) bcmath
