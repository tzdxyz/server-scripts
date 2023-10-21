#!/bin/bash
# setup nginx after installation

sudo systemctl enable nginx
sudo systemctl start nginx
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https	
sudo firewall-cmd --reload
