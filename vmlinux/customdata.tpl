#!/bin/bash
#
# Install Docker
#
echo "[$(date +%F_%T)] Installing Docker" 
sudo apt-get update -y &&
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch-amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&
sudo apt-get update -y &&
sudo apt-get install -y docker-ce docker-ce-cli container.io &&
sudo usermod -aG docker ubuntu
#
# Install Azure CLI
#
echo "[$(date +%F_%T)] Installing Azure CLI" 
sudo apt-get update && sudo apt install -y azure-cli