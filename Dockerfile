FROM centos:latest
RUN yum install httpd -y
RUN yum install php -y
COPY index.html /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80
