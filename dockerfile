FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
ADD . /var/www/index.html
ENTRYPOINT apachectl -D FOREGROUND


