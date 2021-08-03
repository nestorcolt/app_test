#!/bin/bash

# Stop all ngineX processes before launch to clean up
sudo kill $(ps aux | grep '[n]ginx' | awk '{print $2}')
sudo docker kill nginx
sudo docker kill web_app

# Get the user machine in a env variable
MACHINE_USER=${USER}

# Install mkcert to validate ssl configuration 
sudo apt update
sudo apt install -y curl libnss3-tools
sudo apt clean
sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

sudo curl -Lo /usr/local/bin/mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.4.0/mkcert-v1.4.0-linux-amd64
sudo chmod +x /usr/local/bin/mkcert

mkdir -p /home/${MACHINE_USER}/nginx/ssl/
mkcert -install
mkcert -key-file /home/${MACHINE_USER}/nginx/ssl/ssl.key -cert-file /home/${MACHINE_USER}/nginx/ssl/ssl.crt localhost 127.0.0.1

# Create the .env file to make sure it exist for next validation
touch .env

# Get the local user name to pass later on path as env variable
USERNAME_EXISTS="$(cat .env | grep -c HOST_USER)"

if [[ $USERNAME_EXISTS = 0 ]]
then 
    echo HOST_USER=${MACHINE_USER} >> .env
fi

# Build dockerized apps and containers
sudo docker-compose up --build --force-recreate