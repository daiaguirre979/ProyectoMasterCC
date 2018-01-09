FROM webdevops/php:debian-8-php7
MAINTAINER dayana aguirre

ENV WEB_DOCUMENT_ROOT  /application/code/
ENV WEB_DOCUMENT_INDEX index.php
ENV WEB_ALIAS_DOMAIN   *.vm

# Install apache
RUN /usr/local/bin/apt-install \
        apache2 \
        apache2-mpm-worker \
        libapache2-mod-fastcgi \
	&& sed -ri ' \
		s!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g; \
		s!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g; \
		' /etc/apache2/apache2.conf \
	&& rm -f /etc/apache2/sites-enabled/* \
	&& a2enmod actions fastcgi ssl rewrite headers

EXPOSE 80
EXPOSE 443

RUN rm /var/www/html/index.html
COPY contenedores/index.php /var/www/html/
COPY contenedores/index.php /var/www/html/status/

CMD ["supervisord"]
