FROM ubuntu
MAINTAINER yashpalbajaj1@gmail.com
RUN apt update
RUN apt install -y micro-httpd \
  zip \
 unzip
 RUN apt-get clean
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/roxy.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip roxy.zip
RUN cp -rvf roxy/* .
RUN rm -rf roxy roxy.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
