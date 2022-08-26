## Solucion del Reto 3

## Paso 1:

    > docker run -d --name contnginx -p 8181:80 nginx:alpine

## Paso 2: vemos que img tenemos

    > docker images

## paso 3: verificamos que contenedor estas corriendo

    > docker ps

## paso 4: entramos al contenedor com

    > docker exec -it NGINX sh

## paso 5: Copiar el archivo index.htm de la carpeta src desde el host a la carpeta del contenedor.

	> COPY /src/index.html /usr/share/nginx/html

## comando:
    
    > docker run -v $PWD/index.html:/usr/share/nginx/html -d -p 81:80 nginx