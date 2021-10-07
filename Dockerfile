FROM docker.io/bitnami/nginx:1.21-debian-10
COPY vco-repo /app/vco-repo
COPY nginx.conf /opt/bitnami/nginx/conf/server_blocks/vco-repo.conf
COPY mime.types /opt/bitnami/nginx/conf/mime.types
