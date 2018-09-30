FROM nginx

COPY index.html /usr/share/nginx/html

RUN sed 's/keepalive_timeout  65/keepalive_timeout  0/' /etc/nginx/nginx.conf > /tmp/nginx.conf \
    && mv /tmp/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]