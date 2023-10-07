# Utiliza una imagen base de Node.js
FROM node:16

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos necesarios al contenedor
COPY package*.json ./
COPY yarn.lock ./

# Instala las dependencias del proyecto
RUN yarn install

# Copia el resto de los archivos al contenedor
COPY . .

# Expone el puerto en el que Strapi se ejecutará
EXPOSE 1337

# Inicia la aplicación Strapi
CMD ["yarn", "develop"]
