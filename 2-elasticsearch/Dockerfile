#version 2 - This is for Elasticsearch - 8.4.2020
From java_image
ENV DEBIAN_FRONTEND noninteractive
RUN mkdir /data

MAINTAINER James Kirn
# Install Elasticsearch
RUN apt-get install wget -y
RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.8.1-linux-x86_64.tar.gz
RUN tar xvzf elasticsearch-7.8.1-linux-x86_64.tar.gz
RUN rm -f elasticsearch-7.8.1-linux-x86_64.tar.gz
# Should now have a directory elasticsearch-7.8.1
RUN chown -R esuser:esuser elasticsearch-7.8.1
# elasticsearch.yml and Dockerfile are on the same location
# --jjk-- remove original elasticsearch.yml
RUN rm /home/esuser/elasticsearch-7.8.1/config/elasticsearch.yml
ADD elasticsearch.yml /home/esuser/elasticsearch-7.8.1/config/elasticsearch.yml
RUN chown -R esuser:esuser /home/esuser/elasticsearch-7.8.1/config/elasticsearch.yml
# ADD max_map_count /proc/sys/vm/max_map_count on Host machine
ENTRYPOINT elasticsearch-7.8.1/bin/elasticsearch
