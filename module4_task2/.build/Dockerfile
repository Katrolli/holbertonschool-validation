# First stage: testing
FROM golang:1.15.8-alpine AS builder

# hadolint ignore=DL3018,DL4006
RUN apk add --no-cache curl bash gcc musl-dev \
    && curl -sSfL -o /usr/local/bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.6.0/hadolint-Linux-x86_64 \
    && chmod +x /usr/local/bin/hadolint \
    && curl -sSfL -o /usr/local/bin/container-structure-test https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 \
    && chmod +x /usr/local/bin/container-structure-test \
    && curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b "$(go env GOPATH)/bin" v1.29.0

WORKDIR /go/src/app
COPY . .
RUN hadolint Dockerfile 

# Second stage: building the final Docker image
FROM golang:1.15.8-alpine

# hadolint ignore=DL3018
RUN apk add --no-cache hugo

# hadolint ignore=DL3045
COPY --from=builder /go/src/app .

# Set the working directory in the container
WORKDIR /go/src/app
