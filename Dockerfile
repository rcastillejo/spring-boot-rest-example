FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/spring-boot-rest-example-0.5.0.war app.war
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","-Dspring.profiles.active=test","/app.war"]
