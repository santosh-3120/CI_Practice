# Use Java base image
FROM openjdk:11

# Set working directory
WORKDIR /app

# Copy code to container
COPY . .

# Compile the Java file
RUN javac HelloWorld.java

# Run the Java program
CMD ["java", "HelloWorld"]
