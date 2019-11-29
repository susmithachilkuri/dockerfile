FROM ubuntu
CMD apt-get update
#CMD apt-get -y install apache2
#CMD apt-get install -y apache2-utils
CMD apt-get clean
CMD apt-get upgrade -y
EXPOSE 80
ADD . /var/www/index.html
CMD [“apache2ctl”, “-D FOREGROUND”]


