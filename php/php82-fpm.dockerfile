# syntax = edrevo/dockerfile-plus
FROM php:8.2-rc-fpm

INCLUDE+ ./includes/base.dockerfile
INCLUDE+ ./includes/image.dockerfile
INCLUDE+ ./includes/nginx.dockerfile
INCLUDE+ ./includes/cleaner.dockerfile
