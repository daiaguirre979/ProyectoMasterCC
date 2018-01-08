FROM eboraas/apache:stretch
MAINTAINER Ed Boraas <ed@boraas.ca>

RUN apt-get update && apt-get -y install php php-mysql libapache2-mod-php && apt-get clean && rm -r /var/lib/apt/lists/*

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
