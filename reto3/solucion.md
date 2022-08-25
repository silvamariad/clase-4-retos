## Solucion del Reto 3

## Paso 1:

    > docker run -d --name NGINX -p 8080:8080 nginx:alpine

## Paso 2: vemos que img tenemos

    > docker images

## paso 3: verificamos que contenedor estas corriendo

    > docker ps

## paso 4: entramos al contenedor com

    > docker exec -it NGINX sh