# syntax = edrevo/dockerfile-plus
FROM php:7.4-cli

INCLUDE+ ./includes/base.dockerfile
INCLUDE+ ./includes/image.dockerfile
INCLUDE+ ./includes/cleaner.dockerfile
