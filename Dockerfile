FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN apt-get install tomcat8
RUN mkdir -p /home/ubuntu/tomcat
RUN chmod 777 /home/ubuntu/tomcat
RUN wget http://redrockdigimark.com/apachemirror/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.16/* /home/ubuntu/tomcat/
EXPOSE 8080
CMD ["/home/ubuntu/tomcat/bin/catalina.sh", "run"]