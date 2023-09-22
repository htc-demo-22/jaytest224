FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
RUN apk add --no-cache maven
RUN mvn clean package
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]