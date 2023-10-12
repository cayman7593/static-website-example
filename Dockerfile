FROM ubuntu
LABEL cyril (ngando.cyril@outlook.fr)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
