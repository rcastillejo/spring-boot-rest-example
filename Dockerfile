FROM redhat-openjdk-18/openjdk18-openshift
COPY target/spring-boot-rest-example-0.5.0.war app.war
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","-Dspring.profiles.active=test","/app.war"]
