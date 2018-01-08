FROM yieldr/apache-php

ENV CRON_VERSION 0.8.0
ENV CRON_OS linux
ENV CRON_ARCH amd64

RUN set -x \
	&& apt-get update -y --no-install-recommends \
	&& apt-get install -y g++ make \
	&& pecl install grpc-1.4.6 \
	&& echo "extension=grpc.so" >> /etc/php5/cli/php.ini \
	&& pecl config-set php_ini /etc/php5/cli/php.ini \
	&& echo "extension=grpc.so" >> /etc/php5/apache2/php.ini \
	&& pecl config-set php_ini /etc/php5/apache2/php.ini \
	&& mkdir -p /home/code \
	&& ln -sf /home/code/web /var/www/code \
	&& chown www-data:www-data -R /home/code \
	&& curl -o /usr/bin/crond -sSL https://github.com/alexkappa/crond/releases/download/v$CRON_VERSION/crond-$CRON_OS-$CRON_ARCH \
	&& chmod +x /usr/bin/crond

COPY vhost.conf /etc/apache2/sites-available/000-default.conf

ONBUILD ADD . /home/code

CMD ["apachectl", "-D", "FOREGROUND"]
