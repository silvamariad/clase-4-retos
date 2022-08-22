# Solucion:

## Paso 1: usamos el docker run para crear la img, asigamos el puerto.

    > docker run -d --name servidor_web -p 8181:80 nginx

![paso 1](https://github.com/silvamariad/clase-4-retos/blob/main/reto1/img/1-1.png)
![paso 1-1](https://github.com/silvamariad/clase-4-retos/blob/main/reto1/img/1-2.png)

## Paso 2: para ver que contenedor esta corriendo.

    > docker ps
![paso 2](https://github.com/silvamariad/clase-4-retos/blob/main/reto1/img/2-1.png)
![paso 2-1](https://github.com/silvamariad/clase-4-retos/blob/main/reto1/img/2-2.png)

## Paso 3: para confirmar si la img esta descargada.

    > docker images
![paso 3](https://github.com/silvamariad/clase-4-retos/blob/main/reto1/img/3-1.png)

## Paso 4: para detener el contenedor usamos

    > docker stop servidor_web
![paso 4](https://github.com/silvamariad/clase-4-retos/blob/main/reto1/img/4-1.png)

## Paso 5: verificamos con ese comando si esta corriendo el contenedor.

    > docker ps
![paso 5](https://github.com/silvamariad/clase-4-retos/blob/main/reto1/img/5-1.png)

## Paso 6: para eliminar la img.

    > docker rm servidor_web
![paso 6](https://github.com/silvamariad/clase-4-retos/blob/main/reto1/img/6-1.png)

## paso 7: muestra todos los contenedores aun no esten corriendo

    > docker ps -a
![paso 7](https://github.com/silvamariad/clase-4-retos/blob/main/reto1/img/7-1.png)
![paso 7-1](https://github.com/silvamariad/clase-4-retos/blob/main/reto1/img/7-2.png)