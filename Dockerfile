FROM debian:jessie
RUN apt-get update && \
    apt-get install --no-install-recommends -y nginx
COPY index.html /var/www/html/
EXPOSE 80    
CMD ["nginx", "-g", "daemon off;"]
