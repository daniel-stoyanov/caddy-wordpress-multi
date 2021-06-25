#!/bin/bash

# Elevate Permissions for Ubuntu user 
sudo usermod -aG docker ubuntu

# Install Docker Machine
chmod +x /usr/local/bin/docker-machine

mkdir caddy

cd caddy

wget https://raw.githubusercontent.com/daniel-stoyanov/caddy-wordpress-multi/main/docker-compose.yml

wget https://github.com/daniel-stoyanov/caddy-wordpress-multi/raw/main/websites.tar

wget https://raw.githubusercontent.com/daniel-stoyanov/caddy-wordpress-multi/main/db-variablestm.env

wget https://raw.githubusercontent.com/daniel-stoyanov/caddy-wordpress-multi/main/db-variablesvg.env

wget https://raw.githubusercontent.com/daniel-stoyanov/caddy-wordpress-multi/main/db-variablesvr.env

wget https://raw.githubusercontent.com/daniel-stoyanov/caddy-wordpress-multi/main/wp-variablestm.env

wget https://raw.githubusercontent.com/daniel-stoyanov/caddy-wordpress-multi/main/wp-variablesvr.env

wget https://raw.githubusercontent.com/daniel-stoyanov/caddy-wordpress-multi/main/wp-variablesvg.env

tar -xvf websites.tar

rm websites.tar
