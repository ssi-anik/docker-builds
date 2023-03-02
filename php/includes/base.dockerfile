# Install dependencies
RUN apt-get update && apt-get install -y supervisor curl nano vim zip unzip jq git

# install https://github.com/mlocati/docker-php-extension-installer
RUN curl --silent --fail --location --retry 3 --output /usr/local/bin/install-php-extensions \
        --url https://github.com/mlocati/docker-php-extension-installer/releases/download/1.4.8/install-php-extensions \
    && chmod +x /usr/local/bin/install-php-extensions \
    && install-php-extensions pdo pdo_pgsql pdo_mysql bcmath redis opcache sockets pcntl intl

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy error reporting configuration
COPY ./conf/php/default.ini /usr/local/etc/php/conf.d/default.ini

# Copy supervisor config
COPY ./conf/supervisord/supervisord.conf /etc/supervisor/supervisord.conf

# Create folder to run
RUN mkdir -p /var/www/html

# Work in the specific space
WORKDIR /var/www/html

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
