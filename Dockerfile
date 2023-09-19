FROM nginx
COPY build /usr/share/nginx/html
COPY config /etc/nginx/conf.d

EXPOSE 8080