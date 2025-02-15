# Proyecto Backend - Fernangus

## Despliegue en Desarrollo
1. Clonar el repositorio.
2. Ejecutar:  

docker-compose -f docker-compose-dev.yml up -d

3. Acceder a `http://localhost:8080`.

## Despliegue en Producción
1. Configurar el dominio en FreeDNS.
2. Crear el archivo `.env` en la raíz.
3. Ejecutar:

docker-compose -f docker-compose.yml up -d

4. Acceder a `http://fernangus.api.chickenkiller.com`.

## Comandos útiles
- `docker-compose down` → Detener contenedores.
- `docker-compose ps` → Ver estado.