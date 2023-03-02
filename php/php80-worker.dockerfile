# syntax = edrevo/dockerfile-plus
FROM php:8.0-cli

INCLUDE+ ./includes/base.dockerfile
INCLUDE+ ./includes/image.dockerfile
INCLUDE+ ./includes/cleaner.dockerfile
