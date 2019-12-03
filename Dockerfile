FROM php:7.0-apache AS beedoo-app

WORKDIR /var/www/html

RUN a2enmod rewrite

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
RUN a2ensite 000-default

RUN apt-get update && apt-get install -y mysql-client
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli

RUN usermod -u 1000 www-data
