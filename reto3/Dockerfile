# escape=`
# Archivo Dockerfile del reto3

#creamos el contenedor v.1.0

# partimos del la version alpine
FROM nginx:alpine

# copiamos el archivo de nuestro local
COPY index.html /usr/share/nginx/html/index.html

# Indicamos que este contenedor se comunica por el puerto 82/tcp
EXPOSE 8080

ENTRYPOINT echo "Mi 1era Img desde cero!!!"
