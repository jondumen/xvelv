# Imagen base de Node.js
FROM node:20-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Instala http-server globalmente
RUN npm install -g http-server

# Copia los archivos del proyecto al contenedor
COPY . .

# Expone el puerto 8080 (puedes cambiarlo si quieres)
EXPOSE 8080

# Comando para iniciar el servidor
CMD ["http-server", "-p", "8080", "-c-1"]
