# alpine-nginx

simple html web server

Nginx Configuration file: /etc/nginx/nginx.conf

Web server root directory: /www/

# Use

docker pull svenplus/alpine-nginx

docker run -it -d -p 80:80 --name=alpine-nginx svenplus/alpine-nginx:latest /bin/sh

Or

docker run -it -d -p 80:80 -v xxx:/www/ --name=alpine-nginx svenplus/alpine-nginx:latest /bin/sh