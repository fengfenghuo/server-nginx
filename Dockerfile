FROM nginx
COPY conf/* /etc/nginx/confs/
COPY data/* /data/
RUN mkdir -p /etc/nginx/logs/
CMD ["nginx", "-g", "daemon off;", "-c", "/etc/nginx/confs/nginx.conf"]
