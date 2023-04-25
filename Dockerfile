FROM centos:centos7.9.2009
MAINTAINER yashpalbajaj1@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
