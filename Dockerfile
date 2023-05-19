# Dockerfile

# Inherit from the official image alpine:3.13
FROM alpine:3.13

# Copy the built application binary from local directory
COPY ./module4_task3/awesome-api /app/awesome-api

# Set the working directory in the container
WORKDIR /app

# Command to run the application
CMD ["./awesome-api"]