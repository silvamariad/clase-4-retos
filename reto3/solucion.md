## Solucion del Reto 3

## Paso 1:

    > docker run -d --name cont1 -p 8181:80 nginx:alpine

## Paso 2: vemos que img tenemos

    > docker images

## paso 3: verificamos que contenedor estas corriendo

    > docker ps

## paso 4: entramos al contenedor com

    > docker exec -it cont1 sh

## paso 5: Copiar el archivo index.htm de la carpeta src desde el host a la carpeta del contenedor.

	> COPY /src/index.html /usr/share/nginx/html

## comando:
    
    > docker cp index.html cont1:/usr/share/nginx/html/index.html

## Crear un volumen 'static_content' en el CLI de Docker

    > docker volume create static_content

## Construir la imagen del contenedor 

    > docker build -t bootcamp_nginx/nginx:latest