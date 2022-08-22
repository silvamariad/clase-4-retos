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
docker run -d --name servidor_web -p 8181:80 nginx

echo "###########################################"
echo "#..::Nuestro contenedor esta corriendo::..#"
echo "###########################################"
docker ps

echo "#####################################################"
echo "#..::Confirmamos que nuestra img esta descargada::..#"
echo "#####################################################"
docker images

echo "###########################################"
echo "#   ..::Detenemos nuestro contenedor::..  #"
echo "###########################################"
docker stop servidor_web

echo "######################################################################"
echo "#..::Verificamos si esta aun corriendo luego del comando anterior::..#"
echo "######################################################################"
docker ps

echo "###########################################"
echo "# ..::Eliminamos nuestro contenedor::..   #"
echo "###########################################"
docker rm servidor_web

echo "############################################################"
echo "# ..::Nos muestra todas las img asi no esten corriendo::.. #"
echo "############################################################"
docker ps -a

echo "############################################################"
echo "#               ..::Reto 1 terminado::..                   #"
echo "############################################################"
