#!/bin/bash
# setup nginx after installation
# doc: https://www.nginx.com/resources/wiki/start/
# doc: https://wiki.debian.org/Nginx/DirectoryStructure

sudo systemctl enable nginx
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https	
sudo firewall-cmd --reload
sudo systemctl start nginx
