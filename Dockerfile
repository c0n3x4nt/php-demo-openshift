# Použij MW base image s Apache
FROM v4mp1r3/apache-php-base:latest

# Zkopírovat kód aplikace
COPY . /var/www/html/

# Metadata – OpenShift bude vědět, že port 8080 se má otevřít
EXPOSE 8080
