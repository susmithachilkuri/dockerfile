FROM ubuntu
CMD apt-get update
CMD apt-get -y install apache2
ADD . /var/www/index.html
ENTRYPOINT apachectl -D FOREGROUND
ENV name Devops Capgemini

