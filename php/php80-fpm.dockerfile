# syntax = edrevo/dockerfile-plus
FROM php:8.0-fpm

INCLUDE+ ./includes/base.dockerfile
INCLUDE+ ./includes/image.dockerfile
INCLUDE+ ./includes/nginx.dockerfile
INCLUDE+ ./includes/cleaner.dockerfile
