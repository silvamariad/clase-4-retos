#!/bin/bash
#reto4
#
# Viernes, septiembre 02/2022 Maria Silva
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
echo "#         ..::Creando la carpeta::.       #"
echo "###########################################"
mkdir reto4

echo "###########################################"
echo "#     ..::entregamos a la carpeta::.      #"
echo "###########################################"
cd apache

echo "###########################################"
echo "# ..::creamos y guardamos el archivo::.   #"
echo "###########################################"
vi Dockerfile

echo "###########################################"
echo "#     ..::Hacemos un docker build::.      #"
echo "###########################################"
docker build -t simple-apache:new

echo "#####################################################"
echo "#..::Confirmamos que nuestra img esta descargada::..#"
echo "#####################################################"
docker images

echo "###########################################"
echo "#       ..::Hacemos un docker run:..      #"
echo "###########################################"
docker run -d --name my_apache -p 5050:80 simple-apache:new

echo "######################################################"
echo "#       ..::Luego actualizamos el Navegador::..      #"
echo "#             ..::Para ver el mensaje::..            #"
echo "######################################################"

echo "###########################################"
echo "#     ..::Hacemos un docker inspect:..    #"
echo "###########################################"
docker inspect simple-apache:new | jp .[0].RootFS
