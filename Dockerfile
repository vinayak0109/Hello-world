FROM centos
RUN yum install httpd -y
EXPOSE 80
COPY ./index.html /var/www/html
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
