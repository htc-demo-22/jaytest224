FROM eclipse-temurin:17-jdk-alpine
RUN apk add --no-cache maven
RUN mvn -f ./pom.xml clean package
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]