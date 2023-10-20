#!/bin/bash
# change ssh configs
# ref: https://stackoverflow.com/questions/36389561/bash-script-to-disable-root-login


# shutdown root login
sed -i '/^PermitRootLogin[ \t]\+\w\+$/{ s//PermitRootLogin no/g; }' /etc/ssh/sshd_config
# limit max auth tries
sed -i '/^#MaxAuthTries[ \t]\+\w\+$/{ s//MaxAuthTries 6/g; }' /etc/ssh/sshd_config
