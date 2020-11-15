FROM centos:latest
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY servername.conf /etc/httpd/conf.d/
CMD usr/sbin/httpd -D FOREGROUND
EXPOSE 80
