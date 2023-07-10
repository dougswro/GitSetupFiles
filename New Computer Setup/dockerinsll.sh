#!/bin/bash

apt-get remove docker docker-engine docker.io containerd runc
apt-get purge docker-ce docker-ce-cli containerd.io docker-compose-plugin

apt-get update 

apt-get install \
       ca-certificates \
       curl \
       gnupg \ 
       lsb-release

mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
	"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update
apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# if key error with update uncomment
# chmod a+r /etc/apt/keyrings/docker.gpg

echo ------ done with install checking function now ----------

docker run hello-world

#https://docs.docker.com/engine/install/debian/

# debian .deb copies https://download.docker.com/linux/debian/dists/bullseye/stable/Contents-arm64
