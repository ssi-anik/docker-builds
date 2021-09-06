FROM php:7.4-cli

RUN apt-get update

RUN apt-get install -y libpq-dev libpng-dev curl nano unzip zip git jq supervisor

RUN docker-php-ext-install pdo_pgsql pdo_mysql

# JPEG - https://stackoverflow.com/a/52892313/2190689
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

RUN pecl install -o -f redis

RUN docker-php-ext-enable redis

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY /worker.conf /etc/supervisor/conf.d/worker.conf

WORKDIR /var/www/html

RUN mkdir -p /var/www/html/storage/logs/
RUN touch /var/www/html/storage/logs/supervisor.log

COPY /entrypoint.sh /entry-point.sh
RUN chmod +x /entry-point.sh

ENTRYPOINT ["/entry-point.sh"]
