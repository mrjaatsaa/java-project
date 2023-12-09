
# Use a base image with Java installed
FROM openjdk:11-jre-slim

# Add a dummy step to invalidate the cache
RUN echo "build version 1.0" > /dev/null

# Set the working directory inside the container
WORKDIR /app

# Copy the entire build context into the container
COPY . /app

# Install Java
RUN apt-get update && apt-get install -y default-jdk

# Specify the command to run when the container starts
CMD ["java", "HelloWorld"]

~                                                                                                                                                     
~                                                                                                                                                     
~                                           
