#!/bin/bash

# Update and install Docker
echo "Installing Docker..."
sudo apt update -y
sudo apt install -y docker.io
sudo systemctl enable --now docker
docker --version

# Create nginx-app directory
mkdir -p ~/nginx-app
cd ~/nginx-app

# Copy your Dockerfile and nginx.conf into ~/nginx-app manually or via scp
# Example: scp -r modules/nginx-app/* arun@<VM_PUBLIC_IP>:~/nginx-app/

# Build Docker image
echo "Building Docker image..."
sudo docker build -t my-nginx-app .

# Stop any existing container
sudo docker rm -f nginx-container 2>/dev/null

# Run Docker container
echo "Running Docker container..."
sudo docker run -d -p 80:80 -p 443:443 --name nginx-container my-nginx-app

echo "Nginx container is running. Access via http://<VM_PUBLIC_IP> or https://<VM_PUBLIC_IP>"
