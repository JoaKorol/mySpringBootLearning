FROM openjdk:17-jdk-alpine
COPY target/my-first-demo-0.0.1-SNAPSHOT.jar my-first-demo-0.0.1.jar
ENTRYPOINT ["java","-jar","/my-first-demo-0.0.1-SNAPSHOT.jar"]