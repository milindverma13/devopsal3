FROM centos:latest
RUN yum install httpd -y
RUN yum install php -y
COPY /root/image/ /var/www/html/
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80
