# Utiliza una imagen Node.js como base
FROM node:14

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . .

# Instala las dependencias
RUN npm install

# Expón el puerto en el que Strapi se ejecutará (generalmente 1337)
EXPOSE 1337

# Comando para iniciar Strapi
CMD ["npm", "start"]
