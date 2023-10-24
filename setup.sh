#!/bin/bash
# the setup script for the debian server

echo "This is a setup shell script for debian"

# Install some common apps
sudo apt-get update > /dev/null
sudo apt-get upgrade
sudo apt-get install git -y
sudo apt-get install ca-certificates curl gnupg -y
sudo apt-get install net-tools -y
sudo apt-get install zip -y

# install nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
source ~/.bashrc
nvm install 18.18.2

#sudo apt install python3 python3-dev python3-venv python3-pip -y
#pip install --upgrade pip

# Install firewalld, a firewall management tool
sudo apt-get install firewalld -y

# Install nginx & ssl bot
sudo apt-get install nginx -y

# Install docker, a container app 
# Ref: https://docs.docker.com/engine/install/debian/
# Remove old apps (comment or uncomment the code by user case)
#for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update > /dev/null
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --yes --dearmor -o /etc/apt/keyrings/docker.gpg 
sudo chmod a+r /etc/apt/keyrings/docker.gpg
# Add the repository & install:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update > /dev/null
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y


# Install syncthing(a file sync app) 
# ref: https://apt.syncthing.net/
#sudo curl -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
#echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
#sudo apt-get update >/dev/null
#sudo apt-get install syncthing -y



