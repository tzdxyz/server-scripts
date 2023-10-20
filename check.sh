#!/bin/bash
# check status of a few services

# check loggins(last 5)
echo -e "\nlast 5 loggins: "
last | head -n 5

# check network
echo -e "\ntcp connection: "
ss -tp

# check firewalld
echo -e "\nfirewalld running state: "
sudo firewall-cmd --state

# firewalld configuration
echo -e "\nfirewalld config state: "
sudo firewall-cmd --get-active-zone

# check docker 
echo -e "\ndocker engine running state: "
sudo systemctl status docker --no-pager | grep Active:

echo -e "\ndocker container running state: "
sudo docker ps

