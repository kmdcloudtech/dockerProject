FROM centos:7
MAINTAINER kmdcloudtech2020@gmail.com
RUN yum -y install httpd \
     zip \
     unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
CMD ["/usr/sbin/httpd", "-D","FOREGROUND"]
EXPOSE 80
