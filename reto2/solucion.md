# Solucion del reto 2 de Docker Conectardo con BD

## Variables para la BD 
    > MARIADB_ROOT_PASSWORD =root 
    > MARIADB_DATABASE      =prueba 
    > MARIADB_USER          =invitado
    > MARIADB_PASSWORD      =invitado

## Usamos el docker run para crear la img, asigamos el puerto.
    > docker run -d --name bbdd1 --env MARIADB_ROOT_PASSWORD=root --env MARIADB_DATABASE=prueba --env MARIADB_USER=invitado --env MARIADB_PASSWORD=invitado -p 3307:3306 mariadb

![Mi Segundo Reto con Docker](https://github.com/silvamariad/clase-4-retos/blob/main/reto2/img/1.jpg)

## Luego vamos al Gestor de Base de Datos y probamos la conexion.

![conectando con Mariadb](https://github.com/silvamariad/clase-4-retos/blob/main/reto2/img/2.png)

## Como resultado: Esta nuestra BD prueba.

![conectando con Mariadb](https://github.com/silvamariad/clase-4-retos/blob/main/reto2/img/3.png)

![conectando con la BD prueba](https://github.com/silvamariad/clase-4-retos/blob/main/reto2/img/4.png)

## No se puede borrar la imagen mariadb mientras el contenedor bbdd está creado.

    > docker rmi mariadb

![conectando con la BD prueba](https://github.com/silvamariad/clase-4-retos/blob/main/reto2/img/5.jpg)

## Reto Terminado