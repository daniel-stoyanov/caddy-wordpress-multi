FROM caddy:2.2.1

EXPOSE 80 443

RUN mkdir /var/www \
    && chown -R root /var/www \
    && apk add wget 

RUN wget https://raw.githubusercontent.com/daniel-stoyanov/caddy-wordpress-multi/main/Caddyfile \
    && mv Caddyfile /etc/caddy/Caddyfile 

WORKDIR /var/www

