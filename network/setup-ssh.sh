#!/bin/bash
# change ssh configs
# ref: https://stackoverflow.com/questions/36389561/bash-script-to-disable-root-login

config_file="/etc/ssh/sshd_config"

# shutdown root login
sed -i '/^PermitRootLogin[ \t]\+\w\+$/{ s//PermitRootLogin no/g; }' $config_file
# limit max auth tries
sed -i '/^#MaxAuthTries[ \t]\+\w\+$/{ s//MaxAuthTries 6/g; }' $config_file


# Check if the ClientAliveInterval setting already exists
if grep -q '^ClientAliveInterval' "$config_file"; then
  # If the setting exists and is commented or has a different value, update it
    sed -Ei 's/^#?(ClientAliveInterval).*/\1 60/' "$config_file"
else
  # If the setting does not exist, add it to the end of the file
    echo "ClientAliveInterval 60" >> $config_file
fi

# Check if the ClientAliveCountMax setting already exists
if grep -q '^ClientAliveCountMax' "$config_file"; then
  # If the setting exists and is commented or has a different value, update it
    sed -Ei 's/^#?(ClientAliveCountMax).*/\1 3/' "$config_file"
else
  # If the setting does not exist, add it to the end of the file
    echo "ClientAliveCountMax 3" >> $config_file
fi
