#!/bin/bash
# docker and firewalld will conflict

sudo firewall-cmd --zone=trusted --remove-interface=docker0 --permanent
sudo firewall-cmd --reload
