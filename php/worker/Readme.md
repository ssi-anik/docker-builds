# Worker Builds

## 8.0 Worker

Image: `sirajul/php:worker-80-latest` includes

- base image: `php:8.0-cli`
- library: `libpng-dev`, `curl`, `nano`, `unzip`, `zip`, `git`, `jq`, `supervisor`
- extension: `pdo_pgsql`, `pdo_mysql`, `gd`, `redis`
- executable: `composer` (version: 2), `bash`

## 7.4 Worker

Image: `sirajul/php:worker-74-latest` includes

- base image: `php:7.4-cli`
- library: `libpng-dev`, `curl`, `nano`, `unzip`, `zip`, `git`, `jq`, `supervisor`
- extension: `pdo_pgsql`, `pdo_mysql`, `gd`, `redis`
- executable: `composer` (version: 2), `bash`
