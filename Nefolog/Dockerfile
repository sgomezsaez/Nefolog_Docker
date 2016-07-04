#Nefolog & MiDSuS Provisioning - Docker
FROM tomcat:7.0-jre7

MAINTAINER Santiago Gomez

ENV CATALINA_HOME /usr/local/tomcat

ADD /conf/tomcat-users.xml ${CATALINA_HOME}/conf/tomcat-users.xml
ADD /bin/nefolog.war ${CATALINA_HOME}/webapps/nefolog.war
ADD /bin/MiDSuS.war ${CATALINA_HOME}/webapps/MiDSuS.war

WORKDIR $CATALINA_HOME
EXPOSE 8080
CMD ["catalina.sh", "run"]
