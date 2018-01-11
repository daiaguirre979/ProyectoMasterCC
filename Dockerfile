FROM centos:centos7
MAINTAINER Dayana Aguirre <daiaguirre@correo.ugr.es>

RUN yum update -y \
	&& yum install -y epel-release \
	&& yum install -y \
	httpd \
	libjpeg* \
	php \
	php-bcmath \
	php-devel \
	php-gd \
	php-php-gettext \
	php-imap \
	php-ldap \
	php-mbstring \
	php-mcrypt \
	php-mysqlnd \
	php-pear-Net-Socket \
	php-xml \
	php-xmlrpc \
	&& yum clean all

WORKDIR /var/www/html

EXPOSE 80

VOLUME ["/var/www/html"]

COPY contenedores/index.php /var/www/html/
COPY contenedores/index.php /var/www/html/status/

CMD ["httpd", "-DFOREGROUND"]
