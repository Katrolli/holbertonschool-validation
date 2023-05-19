# Dockerfile

# Inherit from the official image alpine:3.13
FROM alpine:3.13

# Copy the built application binary from local directory
COPY awesome-api /app/awesome-api

# Set the working directory in the container
WORKDIR /go/src/app

#check
RUN ls -l 

# Command to run the application
CMD ["./awesome-api"]