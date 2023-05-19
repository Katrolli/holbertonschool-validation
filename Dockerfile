# Inherit from the official image alpine:3.13
FROM alpine:3.13

# Copy artifacts from the build stage
COPY --from=awesome:build /go/src/app/dist /app
COPY --from=awesome:build /go/src/app/awesome-api /app

# Set the working directory in the container
WORKDIR /app

# Command to run the application
CMD ["./awesome-api"]