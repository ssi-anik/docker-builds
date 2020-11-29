# PHP FPM Builds

## 7.4 FPM
PHP 7.4-fpm build includes
- base image: `php:7.4-fpm`
- library: `libpng-dev`, `curl`, `nano`, `unzip`, `zip`, `git`, `jq`
- extension: `pdo_pgsql`, `pdo_mysql`, `gd`, `redis`, `opcache`
- executable: `composer`, `bash`

### Image
- PHP7.4 - Get the image from: https://hub.docker.com/r/sirajul/php74-fpm