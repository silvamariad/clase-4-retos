# Solucion del reto 2 de Docker Conectardo con BD

## Variables para la BD 
    > MARIADB_ROOT_PASSWORD =root 
    > MARIADB_DATABASE      =prueba 
    > MARIADB_USER          =invitado
    > MARIADB_PASSWORD      =invitado

## Usamos el docker run para crear la img, asigamos el puerto.
    > docker run -d --name bbdd1 --env MARIADB_ROOT_PASSWORD=root --env MARIADB_DATABASE=prueba --env MARIADB_USER=invitado --env MARIADB_PASSWORD=invitado -p 3307:3306 mariadb
