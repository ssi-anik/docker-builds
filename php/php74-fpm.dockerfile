# syntax = edrevo/dockerfile-plus
FROM php:7.4-fpm

INCLUDE+ ./includes/base.dockerfile
INCLUDE+ ./includes/image.dockerfile
INCLUDE+ ./includes/nginx.dockerfile
INCLUDE+ ./includes/cleaner.dockerfile
