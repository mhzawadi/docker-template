FROM alpine:3.24
LABEL org.opencontainers.image.authors="matt@horwood.biz"

RUN apk update                \
    && apk add nginx php85-fpm \
    && mkdir -p /var/www/html/ \
  	&& mkdir -p /run/nginx \
  	&& rm -f /var/cache/apk/*;

COPY config /config
RUN cp /config/php.ini /etc/php85/php.ini && \
    cp /config/php-fpm.conf /etc/php85/php-fpm.conf && \
    cp /config/php_fpm_site.conf /etc/php85/php-fpm.d/www.conf && \
    cp /config/nginx_site.conf /etc/nginx/http.d/default.conf;

EXPOSE 80
ENTRYPOINT ["/config/start.sh"]
CMD ["nginx", "-g", "daemon off;"]
