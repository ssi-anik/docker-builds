# syntax = edrevo/dockerfile-plus
FROM php:8.2-cli

INCLUDE+ ./includes/base.dockerfile
INCLUDE+ ./includes/image.dockerfile
INCLUDE+ ./includes/cleaner.dockerfile
