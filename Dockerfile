 FROM ubuntu:16.04 
MAINTAINER "raveendragollaprolu@gmail.com"
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr
ADD  apache-tomcat-9.0.62.tar.gz /root
COPY target/.war /root/apache-tomcat-9.0.62/webapps
ENTRYPOINT /root/apache-tomcat-9.0.62 raveendradevops.war/bin/startup.sh && bash

