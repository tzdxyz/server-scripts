#!/bin/bash
# check status of a few services

# check loggins(last 5)
echo -e "\nlast 5 loggins: "
last | head -n 5

# check network
echo -e "\ntcp connection: "
ss -tp
ss -tpln

# check firewalld
echo -e "\nfirewalld running state: "
sudo firewall-cmd --state

# firewalld configuration
echo -e "\nfirewalld config state: "
sudo firewall-cmd --get-active-zone

# check nginx
echo -e "\nnginx running state: "
sudo systemctl status nginx --no-pager | grep Active:

# check docker 
echo -e "\ndocker engine running state: "
sudo systemctl status docker --no-pager | grep Active:

echo -e "\ndocker container running state: "
sudo docker ps

