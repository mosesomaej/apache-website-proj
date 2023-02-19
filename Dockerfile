FROM centos:7
LABEL Description="Docker image built using Jenkins pipeline!"
RUN yum -y update
RUN yum -y install httpd
COPY ./app /var/www/html/
EXPOSE 80 
ENTRYPOINT ["/usr/sbin/httpd"] # entrypoint
CMD [ "-D", "FOREGROUND" ]