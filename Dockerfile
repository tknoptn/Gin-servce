# Use a Golang base image
FROM golang:1.17-alpine

# Set the working directory
WORKDIR /app

# Copy the source code to the container
COPY . .

# Download dependencies
RUN go mod download

# Build the binary
RUN go build -o main .

# Expose the port the application will listen on
EXPOSE 8081

# Start the application
CMD ["./main"]
