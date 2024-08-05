# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install http-server to serve static files
RUN npm install -g http-server

# Make port 80 available to the world outside this container
EXPOSE 80

# Serve the app
CMD ["http-server", "-p", "80"]
