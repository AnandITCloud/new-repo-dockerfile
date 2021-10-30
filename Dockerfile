FROM ubuntu:latest

MAINTAINER "tamanakumar839@gmail.com"

RUN apt-get update -y
RUN apt-get install apache2 -y
RUN echo "hello this is httpd installed images from Dockerfile" > /var/www/index.html


EXPOSE 8084 8080
#start the httpd service
CMD ["-d","FOREGROUND"]

ENTRYPOINT ["/user/sbin/httpd"]
