FROM ubuntu:14.04
MAINTAINER duo25 <duo2500@gmail.com>
RUN apt-get update; apt-get install -y nginx
ADD index.html /usr/share/nginx/html/
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
