FROM abelche/aliyun-alpine

COPY src/entrypoint.sh /

RUN apk update && apk upgrade

RUN apk add apache2 php7 php7-fpm php7-opcache php7-curl php7-gd php7-mbstring php7-mysqli php7-json php7-apache2 && \
    apk add openrc --no-cache

WORKDIR /var/www/localhost/htdocs

RUN chmod u+x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
