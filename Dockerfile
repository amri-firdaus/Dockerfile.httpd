FROM registry.redhat.io/rhel8/httpd-24
COPY index.html /var/www/html/
COPY servername.conf /etc/httpd/conf.d/
EXPOSE 80
CMD ["/usr/bin/run-httpd"]
