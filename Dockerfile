FROM centos:centos7
MAINTAINER yashpalbajaj1@gmail.com
RUN yum install -y httpd \
  zip \
 unzip yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/roxy.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip roxy.zip
RUN cp -rvf roxy/* .
RUN rm -rf roxy roxy.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
