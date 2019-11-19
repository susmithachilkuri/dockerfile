FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install apache2
RUN service apache2 restart
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
