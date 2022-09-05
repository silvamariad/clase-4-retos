#Dockerfile 

#nuestra img base
FROM node:14-alpine

#la carpeta que necesitamos
WORKDIR /usr/src/hello-bootcamp

#copiamos los archivos a mi directorio de trabajo
COPY packege*.json ./

#al ejecutarlo creamos las dependencias
RUN npm install

#copiamos todo a nuestro directorio actual
COPY . .

#imprime en la terminal
RUN echo "Creado mi Img de Nodejs"

#puerto
EXPOSE 4000

#lo ejecutamos
CMD [ "npm", "start" ]


