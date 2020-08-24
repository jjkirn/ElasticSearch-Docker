FROM java_image
# This is for Kibana
MAINTAINER James Kirn

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install wget -y
RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-7.8.1-linux-x86_64.tar.gz
RUN tar xvzf kibana-7.8.1-linux-x86_64.tar.gz
RUN rm kibana-7.8.1-linux-x86_64.tar.gz
RUN chown -R esuser:esuser kibana-7.8.1-linux-x86_64
ADD kibana.yml kibana-7.8.1-linux-x86_64/config/kibana.yml
# Get rid of xpack.reporting error
USER esuser
CMD kibana-7.8.1-linux-x86_64/bin/kibana --xpack.reporting.enabled=false
#ENTRYPOINT bin/kibana
