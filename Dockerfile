# Utiliza la imagen oficial de Node.js como base
FROM node:14

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo package.json y package-lock.json para instalar las dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos del proyecto
COPY . .

# Expón el puerto en el que funciona Strapi (por defecto 1337)
EXPOSE 1337

# Comando para ejecutar Strapi
CMD ["npm", "start"]