# Utiliza una imagen de Node.js como base
FROM node:18

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de tu proyecto Strapi al contenedor
COPY . .

# Instala las dependencias
RUN npm install

# Expone el puerto en el que se ejecuta Strapi (por defecto 1337)
EXPOSE 1337

# Comando para iniciar Strapi
CMD ["npm", "start"]
