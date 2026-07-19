# Use an official Java 17 runtime as a parent image
FROM eclipse-temurin:17-jre-jammy

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged jar file from the target directory into the container
# We use a wildcard so it works even when the POM version changes
COPY target/spring-petclinic-*.jar app.jar

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]