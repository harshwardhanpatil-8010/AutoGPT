# Use a lightweight, official NGINX image as the base
# Using a specific version tag is recommended for reproducibility
FROM nginx:1.25-alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all files from the current directory into the NGINX default public HTML directory
# .dockerignore will be used to exclude unnecessary files
COPY . .

# NGINX image already handles starting the server, but we expose port 80 for clarity
EXPOSE 80

# The base image's CMD ["nginx", "-g", "daemon off;"] will be used to start NGINX
