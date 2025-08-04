# Dockerfile

# Usa una imagen base de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de package.json y package-lock.json (si existe)
# Esto optimiza el caché de Docker: si las dependencias no cambian, no se reinstalan
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto del código de la aplicación al contenedor
COPY . .

# Expone el puerto en el que la aplicación Node.js está escuchando
EXPOSE 3000

# Comando para ejecutar la aplicación cuando el contenedor se inicie
CMD [ "node", "app.js" ]

