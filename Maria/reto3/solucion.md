## Solucion del Reto 3

## Paso 1:

    > docker run -d --name cont1 -p 8181:80 nginx:alpine

![paso 1](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/0.png)
![paso 1.1](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/1.png)
![paso 1.2](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/2.png)

## Paso 2: vemos que img tenemos

    > docker images

![paso 2](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/3.png)

## paso 3: verificamos que contenedor estas corriendo

    > docker ps

![paso 3](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/4.png)

## paso 4: entramos al contenedor com

    > docker exec -it cont1 sh
    > # ls
    > # cd usr
    > usr # cd share
    > usr/share # cd nginx
    > usr/share/nginx # ls
    > usr/share/nginx/html # ls
    > usr/share/nginx/html # cat index.html

![paso 4](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/5.png)

## paso 5: Copiar el archivo index.htm de la carpeta src desde el host a la carpeta del contenedor.

	> COPY /src/index.html /usr/share/nginx/html

## El index original del Nginx!

![paso 5](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/6.png)

## comando:
    
    > docker cp index.html cont1:/usr/share/nginx/html/index.html

![paso 6](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/7.png)

## Crear un volumen 'static_content' en el CLI de Docker

    > docker volume create static_content

![paso 7](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/8.png)

## Construir la imagen del contenedor 

    > docker build -t bootcamp_nginx:v1.0.0

![paso 8](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/10.png)

## Hacemos un docker tag en nuestra img

    > docker tag bootcamp_nging silvamaria/bootcamp_nginx:v1.0.0

![paso 9](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/9.png)


## Hacemos un  docker push ya estado en nuestro login

    > docker push silvamaria/bootcamp_nginx:v1.0.0

![paso 10](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/11.png)

## vista de mi repositorio en dockerhub

![paso 11](https://github.com/silvamariad/clase-4-retos/blob/main/reto3/img/12.png)

## Reto Terminado