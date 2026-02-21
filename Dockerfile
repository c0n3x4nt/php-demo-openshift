# Použij MW base image s Apache
FROM php:8.2-apache 

# Zkopírovat kód aplikace
COPY . /var/www/html/

# Metadata – OpenShift bude vědět, že port 8080 se má otevřít
EXPOSE 8080
