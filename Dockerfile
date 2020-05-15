FROM ubuntu


ARG DEBIAN_FRONTEND=noninteractive 
RUN apt-get update && apt-get install -y apache2
EXPOSE 80
CMD nginx -g 'deamon off';
ADD index.html /var/www/html

CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]



