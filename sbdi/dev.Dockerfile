FROM tomcat:9.0-jdk11-temurin

RUN mkdir -p \
	/data/dashboard/config \
	/data/dashboard/csv \
	/data/dashboard/zip

COPY sbdi/data/data.json /data/dashboard/data.json
COPY sbdi/data/config/dashboard-config.properties /data/dashboard/config/dashboard-config.properties

COPY build/libs/dashboard-2.5.0-plain.war $CATALINA_HOME/webapps/ROOT.war
