FROM golang:alpine

# Copy the code into the container
COPY . .

# Command to run when starting the container
 CMD ["go", "run", "src/main/main.go"]