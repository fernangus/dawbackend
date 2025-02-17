# Proyecto Backend - Fernangus

## Despliegue en Desarrollo
1. Clonar el repositorio.
2. Ejecutar:  

docker-compose -f docker-compose-dev.yml up -d

- para recrear contenedores ya creados se puede utilizar el comando adicional --force-recreate -

3. Configurar host, ip local apuntando a fernangus.api.dev.com.

4. Acceder a `http://fernangus.api.dev.com:8080`.

## Despliegue en Producción
1. Configurar el dominio en FreeDNS.
2. Crear el archivo `.env` en la raíz y configurarlo.

Ejemplo:

MYSQL_ROOT_PASSWORD=1234
MYSQL_USER=dbuser
MYSQL_PASSWORD=dbuser
MYSQL_DATABASE=films

3. Crear el archivo `dbconfiguration.yml` en la carpeta app y configurarlo.

Ejemplo:

ip: "db"
dbname: "films"
user: "dbuser"
pass: "dbuser"

4. Ejecutar:

docker-compose up -d

5. Acceder a `http://fernangus.api.chickenkiller.com`.

## Comandos útiles
- docker-compose down → Detener contenedores.
- docker-compose down -v --rmi all → Detener contenedores -v para eliminar volumenes, --rmi all para eliminar imagenes asociadas.
- docker-compose ps → Ver estado.
- docker-compose logs → Arrancar logs de nuestros contenedores.
