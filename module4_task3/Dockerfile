# Dockerfile

# Inherit from the official image alpine:3.13
FROM alpine:3.13


# Set the working directory in the container
WORKDIR /go/src/app

COPY awesome-api .

#check
RUN ls -l 

# Command to run the application
CMD ["./awesome-api"]