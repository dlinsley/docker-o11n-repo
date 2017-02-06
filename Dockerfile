FROM nginx:1.11-alpine
COPY vco-repo /usr/share/nginx/html/vco-repo
COPY nginx.conf /etc/nginx/conf.d/default.conf
