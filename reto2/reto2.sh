#!/bin/bash
#
# Lunes, Agosto 22/2022 Maria Silva
echo "#################################################"
echo "# ..::Actualizamos el sistema linux:Debian11::..#"
echo "#################################################"
sudo apt-get update


set -eu

export DEBIAN_FRONTEND=noninteractive
#
# verificamos si tenemos Docker.
command -v docker >/dev/null 2>&1 || {
    echo >&2 "Configurando requisitos para Docker..."
    apt-get update --fix-missing > /dev/null 2>&1
    curl -sSL https://get.docker.com/ | sh > /dev/null 2>&1
    sleep 4.0
    echo >&2 "Listo..."
}

echo "###########################################"
echo "#         ..::Creando la img::.           #"
echo "###########################################"
docker run --name bbdd --env MARIADB_ROOT_PASSWORD=root --env MARIADB_DATABASE=prueba --env MARIADB_USER=invitado --env MARIADB_PASSWORD=invitado mariadb --port 3306:3306ps

echo "###########################################"
echo "#..::Nuestro contenedor esta corriendo::..#"
echo "###########################################"
docker ps

echo "#####################################################"
echo "#..::Confirmamos que nuestra img esta descargada::..#"
echo "#####################################################"
docker images

echo "######################################################"
echo "#..::Luego ir al Gestor de Base de Datos para ver::..#"
echo "#  ..::Que esta creada nuestro esquema prueba::..    #"
echo "######################################################"