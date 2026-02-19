# Use official PHP image
FROM php:8.2-apache

# Copy application code
COPY . /var/www/html/

# Expose port
EXPOSE 8080
