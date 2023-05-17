# .build/Dockerfile

# Use an existing docker image as a base
FROM golang:1.15.8-buster

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install hadolint
RUN curl -sSfL -o /usr/local/bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.6.0/hadolint-Linux-x86_64 \
    && chmod +x /usr/local/bin/hadolint

# Install container-structure-test
RUN curl -sSfL -o /usr/local/bin/container-structure-test https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 \
    && chmod +x /usr/local/bin/container-structure-test

# Install golangci-lint
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b "$(go env GOPATH)/bin" v1.29.0

# Install Hugo
RUN apt-get update && apt-get install --no-install-recommends -y hugo=0.55.6+really0.54.0-1+deb10u1 && rm -rf /var/lib/apt/lists/*


# Set the working directory in the container
WORKDIR /go/src/app

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

