FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ./${JAR_FILE} standars.jar
EXPOSE 8080/tcp
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/standars.jar"]