##FROM httpd:2.4
FROM rhel7:latest
USER root
#COPY ./public-html/ /usr/local/apache2/htdocs/
##FROM centos:latest
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY servername.conf /etc/httpd/conf.d/
RUN chown root:apache /var/www/cgi-bin/action
RUN chmod 755 /var/www/cgi-bin/action
EXPOSE 80
CMD usr/sbin/httpd -D FOREGROUND
