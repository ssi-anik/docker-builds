# Install nginx
RUN apt-get update && apt-get install -y nginx

# Copy nginx config
COPY ./conf/nginx/default.conf /etc/nginx/sites-enabled/default

# Run nginx in supervisor
COPY ./conf/supervisord/nginx-fpm.conf /etc/supervisor/conf.d/nginx-fpm.conf

EXPOSE 80 9000
