#!/bin/bash
# generate ssh key

mkdir -p ~/.ssh
cd ~/.ssh

# backup and delete old ssh keys
mkdir -p key_backup
cp id_rsa* key_backup
rm id_rsa*

# generate ssh keys
ssh-keygen -t rsa -f ~/.ssh/id_rsa -q -P ""
