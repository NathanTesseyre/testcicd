FROM ubuntu:18.04
MAINTAINER ntesseyr (nathan.tesseyre@gmail.com)
RUN apt-get update
RUN DEBIANT_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
