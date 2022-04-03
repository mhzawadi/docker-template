#!/bin/sh

cp /config/nginx_site.conf /etc/nginx/http.d/default.conf

php-fpm7

exec "$@"
