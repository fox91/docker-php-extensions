FROM php:8.3-trixie

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-pcntl
RUN docker-php-ext-install -j$(nproc) pcntl
