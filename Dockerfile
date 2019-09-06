FROM nginx
COPY conf/* /etc/nginx/confs/
RUN mkdir -p /etc/nginx/logs/
CMD ["nginx", "-g", "daemon off;", "-c", "/etc/nginx/confs/nginx.conf"]
