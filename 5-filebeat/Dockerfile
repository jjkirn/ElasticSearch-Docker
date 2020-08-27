FROM java_image
# This is for Filebeat
MAINTAINER James Kirn

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install wget -y
RUN wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.8.1-linux-x86_64.tar.gz
RUN tar xzvf filebeat-7.8.1-linux-x86_64.tar.gz
RUN rm -f filebeat-7.8.1-linux-x86_64.tar.gz
# RUN chown -R esuser:esuser filebeat-7.8.1-linux-x86_64
ADD filebeat.yml filebeat-7.8.1-linux-x86_64/filebeat.yml
RUN chmod go-w /home/esuser/filebeat-7.8.1-linux-x86_64/filebeat.yml
