FROM debian:latest

LABEL org.opencontainers.image.authors="fernangus@correo.com"

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y apache2 \
    php \
    php-mysql \
    php-yaml \
    libapache2-mod-php

RUN a2enmod rewrite
RUN a2enmod headers

RUN service apache2 restart

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
