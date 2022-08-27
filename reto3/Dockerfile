# escape=`
# Archivo Dockerfile del reto3

#creamos la img

FROM nginx:alpine

RUN apt-get update -y \ apt-get -y upgrade; \ apt-get -y install apt-utils \  vim \ nano \  htop; 

RUN apt-get -y install dstat

EXPOSE 8282

VOLUME "static_content:/usr/share/nginx/html"

WORKDIR /opt/lampp/htdocs/clase-4-retos/reto3

CMD ["bash"]