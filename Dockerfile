
FROM tomcat:8.0
LABEL Owner="TOMCAT"

# Remove default webapps and copy the built WAR
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ROOT.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
