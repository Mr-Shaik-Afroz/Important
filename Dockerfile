FROM ubuntu
RUN mkdir /opt/tomcat
RUN apt update -y
RUN apt install default-jre -y
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.75/bin/apache-tomcat-8.5.75.tar.gz .
RUN tar -xvzf apache-tomcat-8.5.75.tar.gz
EXPOSE 8080
RUN mv /opt/tomcat/apache*/* /opt/tomcat
ADD https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war ./webapps
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
