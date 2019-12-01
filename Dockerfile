FROM bitnami/nginx:1.16-debian-9
COPY vco-repo /app/vco-repo
COPY nginx.conf /opt/bitnami/nginx/conf/server_blocks/vco-repo.conf
