#FROM quay.io/garycncf/nginx:1.11-alpine
FROM registry.redhat.io/ubi8/nginx-120:1-117.1692780863

# Add 2048 stuff into Nginx server
#COPY . /usr/share/nginx/html
COPY . /opt/app-root/src/nginx-start

#EXPOSE 80
EXPOSE 8080

# Start Nginx and keep it running background and start php
# CMD sed -i "s/ContainerID: /ContainerID: "$(hostname)"/g" /usr/share/nginx/html/index.html && nginx -g "daemon off;"
CMD nginx -g "daemon off;"
