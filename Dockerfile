FROM php:7.4-apache
MAINTAINER Anjali
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY start-apache /usr/local/bin
RUN chmod 777 /usr/local/bin/start-apache
RUN docker-php-ext-install mysqli
RUN a2enmod rewrite
COPY ./ /var/www/
RUN chown -R www-data:www-data /var/www
CMD ["start-apache"]
EXPOSE 80