FROM php:8.2-apache

# Install MySQL extension for PHP
RUN docker-php-ext-install mysqli

# Copy project files
COPY frontend/ /var/www/html/
COPY backend/ /var/www/html/api/

EXPOSE 80