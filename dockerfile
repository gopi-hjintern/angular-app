# Use the official Node.js image from the Docker Hub, based on Alpine Linux
FROM node:22-alpine3.19

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all files from the current directory to the working directory in the container
COPY . /app

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Install the dependencies specified in package.json
RUN npm install

# Expose port 4200 to allow external access to the application
EXPOSE 4200

# Specify the command to run the Angular application, making it accessible from any host
ENTRYPOINT [ "ng", "serve", "--host", "0.0.0.0" ]