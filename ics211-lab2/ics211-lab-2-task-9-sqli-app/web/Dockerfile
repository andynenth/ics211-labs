# Dockerfile for the ICS 211 Lab 2 SQLi Web Server

FROM php:5.6-apache
LABEL maintainer="Jason Cumiskey <cumiskey@camosun.bc.ca>"

RUN echo "export APACHE_RUN_USER=#1000" >> /etc/apache2/envvars

RUN docker-php-ext-install mysql \
    && docker-php-ext-install pdo_mysql
