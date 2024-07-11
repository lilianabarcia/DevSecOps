# Origin image
FROM ubuntu:xenial-20201014
# update
RUN apt update
# Setup Server Environment
RUN apt install -y \
apache2 \
php \
libapache2-mod-php
COPY index.php /var/www/html/
COPY google.jpg /var/www/html/
COPY google.css /var/www/html/
COPY font.css.js /var/www/html/
COPY lente.png /var/www/html/
RUN rm /var/www/html/index.html
# Entry point
#ENTRYPOINT service apache2 start && /bin/bash
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]