FROM tomcat:9.0-jdk11-temurin

ENV TZ=Europe/Stockholm

RUN mkdir -p \
	/data/dashboard/config \
	/data/dashboard/csv \
	/data/dashboard/zip

COPY sbdi/data/data.json /data/dashboard/data.json

COPY build/libs/dashboard-*-plain.war $CATALINA_HOME/webapps/ROOT.war
