# escape=`
# Archivo Dockerfile del reto3

#creamos el contenedor v.1.0

FROM nginx:alpine
# partimos del la version alpine
COPY index.html /usr/share/nginx/html/index.html
# copiamos el archivo de nuestro local
RUN apt-get update -y / apt-get upgrade -y
# actualizamos los paquetes del sistema
RUN apt-get -y install vim nano
# e instalamos las actualizaciones
EXPOSE 8282
# Indicamos que este contenedor se comunica por el puerto 82/tcp
ENTRYPOINT echo "Mi 1era Img desde cero!!!"
