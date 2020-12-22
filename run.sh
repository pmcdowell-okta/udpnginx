#!/bin/sh

echo "Starting Nginx"
echo "NGINX_CONF:$NGINX_CONF"
echo $NGINX_CONF > /etc/nginx/nginx.conf

service nginx stop
echo "starting Nginx"

nginx -g "daemon off;"






 

