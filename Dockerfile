FROM ubuntu
MAINTAINER yashpalbajaj1@gmail.com
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y \
  zip \
 unzip
 RUN apt-get install apache2 -y
 RUN apt-get clean
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/roxy.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip roxy.zip
RUN cp -rvf roxy/* .
RUN rm -rf roxy roxy.zip 
CMD ["apache2ctl","-D","FOREGROUND"]
EXPOSE 80
