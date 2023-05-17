# .build/Dockerfile

# Use an existing docker image as a base
FROM golang:1.15.8-buster

# Install hadolint
RUN wget -q https://github.com/hadolint/hadolint/releases/download/v2.6.0/hadolint-Linux-x86_64 -O /usr/local/bin/hadolint \
    && chmod +x /usr/local/bin/hadolint

# Install container-structure-test
RUN wget -q https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 -O /usr/local/bin/container-structure-test \
    && chmod +x /usr/local/bin/container-structure-test

# Install golangci-lint
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.29.0

# Install Hugo
RUN apt-get update && apt-get install -y hugo

# Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set the working directory in the container
WORKDIR /go/src/app

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

# Download dependencies
RUN go mod download