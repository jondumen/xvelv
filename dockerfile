FROM nginx:alpine

# El truco: --chown=nginx:nginx le da los permisos correctos a Nginx automáticamente
COPY --chown=nginx:nginx . /usr/share/nginx/html

# Copia la configuración del filtro de integridad
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
