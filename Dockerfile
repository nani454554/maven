FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/microservice-demo-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
