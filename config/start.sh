#!/bin/sh

cp /config/nginx_site.conf /etc/nginx/conf.d/default.conf

php-fpm7

exec "$@"
