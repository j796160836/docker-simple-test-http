FROM busybox
MAINTAINER Chris <c@crccheck.com>

ADD index.html /www/index.html

EXPOSE 80

# Create a basic webserver and sleep forever
CMD sed -i -e 's/Hello World/Hello World\nHostname: '$(hostname)'/g' /www/index.html ; httpd -p 80 -h /www; tail -f /dev/null

