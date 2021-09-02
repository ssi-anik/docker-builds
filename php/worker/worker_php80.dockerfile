FROM php:8.0-cli

RUN apt-get update

RUN apt-get install -y libpq-dev libpng-dev curl nano unzip zip git jq supervisor

RUN docker-php-ext-install pdo_pgsql pdo_mysql gd

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
