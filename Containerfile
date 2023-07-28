FROM fedora:latest
RUN dnf upgrade
RUN dnf install -y tuxpaint
RUN dnf install -y vim
RUN dnf install -y httpd
COPY myinfo.html /var/www/html/
EXPOSE 80/tcp
ENTRYPOINT httpd -g ["/usr/sbin/httpd", "-DFOREGROUND"]

