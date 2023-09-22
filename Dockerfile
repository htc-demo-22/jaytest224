FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
RUN apk add --no-cache mvn
RUN mvn -f pom.xml clean package
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]