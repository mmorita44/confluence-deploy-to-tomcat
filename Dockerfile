FROM tomcat:8-jre8-alpine
MAINTAINER Masato Morita <m.morita44@hotmail.com>

# copy files.
COPY server.xml /usr/local/tomcat/conf/server.xml
COPY confluence.war /usr/local/tomcat/confluence.war

# install packages.
RUN apk add --no-cache curl tar

# set mysql driver.
RUN curl -Ls "https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.38.tar.gz" | tar -xz --directory "/usr/local/tomcat/lib" --strip-components=1 --no-same-owner "mysql-connector-java-5.1.38/mysql-connector-java-5.1.38-bin.jar" && \
# delete unused files.
    apk del curl tar

EXPOSE 8090

VOLUME /var/shdsd/application-data/confluence

CMD ["catalina.sh", "run"]