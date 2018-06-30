FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /home/ubuntu/tomcat
RUN wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz -O /home/ubuntu/testDemo/tomcat.tar.gz
RUN cd /home/ubuntu/testDemo && tar xvfz tomcat.tar.gz
RUN cp -Rv /home/ubuntu/testDemo/apache-tomcat-8.5.16/* /home/ubuntu/tomcat/
EXPOSE 8080
CMD ["/home/ubuntu/tomcat/bin/catalina.sh", "run"]