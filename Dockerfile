# Use a base image with Java 21
FROM openjdk:21

# Set environment variables for configuration
#ENV APP_NAME=my-spring-app
ENV APP_PORT=8080

# Set maintainer label
LABEL maintainer="Joa Korol <joanna.korolczuk@gmail.com>"

# Copy the JAR file of the Spring Boot application into the container
COPY target/my-first-demo-0.0.1-SNAPSHOT.jar .

# Expose the port the application runs on
EXPOSE $APP_PORT

# Command to run the Spring Boot application
CMD ["java", "-jar", "my-first-demo-0.0.1-SNAPSHOT.jar"]
