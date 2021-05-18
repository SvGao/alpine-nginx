FROM alpine:latest
RUN apk update \
	&& apk add --no-cache nginx \
	openrc \
	&& adduser -D -g 'www' www \
	&& mkdir /www \
	&& chown -R www:www /var/lib/nginx \
	&& chown -R www:www /www \
	&& mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bk
ADD nginx.conf /etc/nginx/
ADD index.html /www/
#Start Service
EXPOSE 80
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;'