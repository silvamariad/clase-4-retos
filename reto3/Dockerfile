# escape=`
# Archivo Dockerfile del reto3

#creamos la img

FROM nginx:alpine
# partimos del la version alpine
COPY index.html /usr/share/nginx/html/index.html
# copiamos el archivo de nuestro local
RUN apt-get update -y \ apt-get -y upgrade; \ apt-get -y install apt-utils \  vim \ nano \  htop; 
# actualizamos los paquetes del sistema
RUN apt-get -y install dstat
# e instalamos las actualizaciones

