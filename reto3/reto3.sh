#!/bin/bash
#reto3 
#
# Viernes, Agosto 26/2022 Maria Silva
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
docker run -d --name cont1 -p 8181:80 nginx:alpine

echo "###########################################"
echo "#..::Nuestro contenedor esta corriendo::..#"
echo "###########################################"
docker ps

echo "#####################################################"
echo "#..::Confirmamos que nuestra img esta descargada::..#"
echo "#####################################################"
docker images

echo "################################################################"
echo "#..::Copiamos el archivo index.html del local al contenedor::..#"
echo "################################################################"
docker cp index.html cont1:/usr/share/nginx/html/index.html

echo "##############################################################"
echo "#     ..::Entremos al contenedor cont1 y buscarmos la ::..   #"
echo "#         ..::carpeta /usr/share/nginx/html::..              #"
echo "##############################################################"
docker exec -it cont1 ls /usr/sr/share/nginx/html/

echo "######################################################"
echo "#       ..::Luego actualizamos el Navegador::..      #"
echo "#         ..::Para ver el msj HOMEWORK 1::..         #"
echo "######################################################"