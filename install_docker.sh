#!/bin/bash

# Update repository and install required packages
sudo apt-get update
sudo apt-get install -y ca-certificates curl

# Add Docker's official GPG key
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources
echo \ 
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Download the Docker Desktop .deb file
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64&_gl=1*9yqhsj*_gcl_au*MTk0MzQ2MzA3Ni4xNzI1ODk2MzMy*_ga*NjE1ODIwMzI2LjE3MjU4OTYzMzM.*_ga_XJWPQMJYHQ*MTcyNjgzNzIwMy4zLjEuMTcyNjgzNzI2OC41OS4wLjA.

# Change to the Downloads directory and install the downloaded file
cd Downloads
sudo apt-get install -y ./docker-desktop-amd64.deb

