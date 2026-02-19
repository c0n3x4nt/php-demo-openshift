# Použij oficiální PHP image s Apache
FROM php:8.2-apache

# Přepnout Apache na port 8080 (Sandbox nepovolí 80)
RUN sed -i 's/Listen 80/Listen 8080/' /etc/apache2/ports.conf \
    && sed -i 's/:80>/:8080>/' /etc/apache2/sites-available/000-default.conf

# Zkopírovat kód aplikace
COPY . /var/www/html/

# Metadata – OpenShift bude vědět, že port 8080 se má otevřít
EXPOSE 8080
