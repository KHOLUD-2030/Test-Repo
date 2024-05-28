# Use the official OpenJDK base image
FROM openjdk:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the source files into the container
COPY src/ .

# Install JUnit dependencies using Maven
RUN apt-get update && \
    apt-get install -y maven && \
    mvn clean test-compile

# Command to run your application
CMD ["java", "App"]
