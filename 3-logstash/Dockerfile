FROM java_image
# This is for Logstash
MAINTAINER James Kirn

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install wget -y
RUN wget https://artifacts.elastic.co/downloads/logstash/logstash-7.8.1.tar.gz
RUN tar xvzf logstash-7.8.1.tar.gz
RUN rm -f logstash-7.8.1.tar.gz
RUN chown -R esuser:esuser logstash-7.8.1
# logstash.conf and Dockerfile are on same location, cat 02 and 30 conf files to combined.
ADD combined.conf /home/esuser
CMD logstash-7.8.1/bin/logstash -f combined.conf --verbose
