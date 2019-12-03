FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get install -y apache2-utils
RUN apt-get clean
RUN apt-get upgrade -y
EXPOSE 80
ADD . /var/www/index.html
CMD [“apache2ctl”, “-D FOREGROUND”]


