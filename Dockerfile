FROM centos:latest
RUN yum install httpd -y
RUN yum install php -y
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
COPY /root/image/index.html /var/www/html/
EXPOSE 80
