FROM openjdk:17-slim

WORKDIR /opt/tomcat

RUN wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.19/bin/apache-tomcat-10.1.19.tar.gz && \
    tar -xzf apache-tomcat-10.1.19.tar.gz && \
    rm apache-tomcat-10.1.19.tar.gz

EXPOSE 8080

COPY java-hello-world-webapp-1.0-SNAPSHOT.war /opt/tomcat/webapps/java-hello-world-webapp-1.0-SNAPSHOT.war

CMD ["catalina.sh", "run"]
