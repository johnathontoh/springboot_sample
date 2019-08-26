FROM tomcat:8.5-alpine
VOLUME /tmp
ARG WAR_FILE
ADD target/springboot-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/app.war
COPY newrelic/newrelic.jar /usr/local/tomcat/webapps/newrelic.jar
COPY newrelic/newrelic.yml /usr/local/tomcat/webapps/newrelic.yml
RUN sh -c 'touch /usr/local/tomcat/webapps/app.war'
ENTRYPOINT [ "sh", "-c", "java -javaagent:/usr/local/tomcat/webapps/newrelic.jar -jar /usr/local/tomcat/webapps/app.war" ]
