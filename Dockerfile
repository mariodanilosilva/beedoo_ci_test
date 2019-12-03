FROM php:5.4-apache AS beedoo-app

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y mysql-client
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli

RUN usermod -u 1000 www-data
