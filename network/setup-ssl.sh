#!/bin/bash
# setup ssl for the webserver by certbot(let's encrypt)

sudo apt-get install certbot -y

# show ssl certificate already have
echo -e "\ncertificated already have"
sudo certbot certificates

# for nginx
sudo apt-get install python3-certbot-nginx -y
sudo certbot --nginx --register-unsafely-without-email 

# check scheduled renew process
echo -e "\ncertbot scheduled renew timer"
systemctl list-timers | grep certbot
