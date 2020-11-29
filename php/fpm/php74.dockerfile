FROM php:7.4-fpm

RUN apt-get update

RUN apt-get install -y libpq-dev libpng-dev curl nano unzip zip git jq

RUN docker-php-ext-install pdo_pgsql pdo_mysql gd

RUN pecl install -o -f redis opcache

RUN docker-php-ext-enable redis opcache

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY /conf.ini /usr/local/etc/php/conf.d/custom.ini

WORKDIR /var/www/html