FROM nginx:alpine

# Copia tu carpeta con la versión multi-archivo limpia (HTML, tus fuentes, etc.)
COPY . /usr/share/nginx/html

# Copia la configuración del filtro de integridad
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
