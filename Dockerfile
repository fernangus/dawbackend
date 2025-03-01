FROM debian:latest

LABEL org.opencontainers.image.authors="gustavofernandez.alu@iespacomolla.es"

# Actualizamos los repositorios y realizamos un upgrade
RUN apt-get update && apt-get upgrade -y

# Instalamos Apache2 y PHP con las extensiones necesarias
RUN apt-get install -y apache2 \
    php -y \
    php-mysql \
    php-yaml \
    curl \
    nano 
RUN apt-get install -y libapache2-mod-php php-mysqli

# Habilitamos los módulos de Apache necesarios para reescritura de URLs y cabeceras
RUN a2enmod rewrite headers

# Reiniciamos el servicio Apache para aplicar los cambios
RUN service apache2 restart

# Exponemos el puerto 80 (el puerto de Apache)
EXPOSE 80

# Comando para iniciar Apache en primer plano
CMD ["apache2ctl", "-D", "FOREGROUND"]
