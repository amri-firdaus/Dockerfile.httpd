FROM centos:latest
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY servername.conf /etc/httpd/conf.d/
RUN chgrp -R 0 /run && chmod -R g=u /run
CMD usr/sbin/httpd -D FOREGROUND
EXPOSE 80