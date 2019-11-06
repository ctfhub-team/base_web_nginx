FROM nginx:1.16.1-alpine

LABEL Organization="CTFTraining" Author="Virink <virink@outlook.com>"

COPY _file /tmp/

RUN mv /tmp/flag.sh /flag.sh \
    && mv /tmp/docker-entrypoint /usr/local/bin/docker-entrypoint \
    && mkdir -p /var/www/html \
    && cp /usr/share/nginx/html/*.html /var/www/html/ \
    && chmod +x /usr/local/bin/docker-entrypoint \
    && mv /tmp/nginx.conf /etc/nginx/nginx.conf; \
    mkdir -p /var/log/nginx

WORKDIR /var/www/html

CMD ["/bin/sh", "-c", "docker-entrypoint"]

EXPOSE 80
