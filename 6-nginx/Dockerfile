FROM filebeat_image
# For NGINX
MAINTAINER James Kirn

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /home/esuser
RUN apt-get update

# Reference: http://nginx.org/en/linux_packages.html#Ubuntu
RUN apt-get install -y wget curl gnupg2 ca-certificates lsb-release
RUN echo "deb http://nginx.org/packages/ubuntu/ `lsb_release -cs` nginx" | tee /etc/apt/sources.list.d/nginx.list
RUN curl -fsSL http://nginx.org/keys/nginx_signing.key | apt-key add -
RUN apt-get update
RUN apt-get -y install nginx pwgen python-setuptools git unzip vim rsyslog

# JJK- had to add directory /var/lib/nginx to get the the rest to work
RUN mkdir /var/lib/nginx
#
RUN chown -R www-data:www-data /var/lib/nginx
# Create user:passwd (admin:Mich2009MI) for the web login
RUN echo "admin:`openssl passwd -apr1 Mich2009MI`" | tee -a /etc/nginx/htpasswd.users
# Remove old config
RUN rm -v /etc/nginx/nginx.conf
# Add new config
ADD nginx.conf /etc/nginx/
# Nginx uses the daemon off directive to run in the foreground. 
# CMD ["nginx","-g","daemon off;"]

WORKDIR /etc/nginx
# EXPOSE 80
CMD /home/esuser/filebeat-7.8.1-linux-x86_64/filebeat -c /home/esuser/filebeat-7.8.1-linux-x86_64/filebeat.yml >/dev/null 2>&1 & service nginx start
#CMD service nginx start
