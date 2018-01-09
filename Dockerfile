FROM debian:stable
MAINTAINER Dayana Aguirre

RUN apt-get update && apt-get -y install apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN /usr/sbin/a2dismod 'mpm_*' && /usr/sbin/a2enmod mpm_prefork
RUN apt-get update && apt-get -y install php php-mysql libapache2-mod-php && apt-get clean && rm -r /var/lib/apt/lists/*


EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
RUN rm /var/www/html/index.html
COPY contenedores/index.php /var/www/html/
COPY contenedores/index.php /var/www/html/status/

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
