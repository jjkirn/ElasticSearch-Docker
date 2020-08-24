#version 2 - This is for java_image
From ubuntu:20.04

MAINTAINER James Kirn

# Install JAVA

ENV DEBIAN_FRONTEND=noninteractive

# Must do update before installing software-properties-common or it will fail
RUN apt-get update
RUN apt-get install -y --no-install-recommends software-properties-common
RUN apt-get install -y --no-install-recommends openjdk-11-jdk

# Add a user
RUN useradd -d /home/esuser -m esuser
WORKDIR /home/esuser
ENV JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
#CMD export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
