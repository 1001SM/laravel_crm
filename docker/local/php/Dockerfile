FROM php:8.2.5-fpm-alpine

ENV COMPOSER_ALLOW_SUPERUSER=1 \
  COMPOSER_HOME=/composer

# install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

# Set working directory
WORKDIR /var/www/

USER root

# install packages
RUN apk update && \
    apk add --no-cache git unzip libzip-dev icu-dev oniguruma-dev && \
    docker-php-ext-install intl pdo_mysql zip bcmath \
