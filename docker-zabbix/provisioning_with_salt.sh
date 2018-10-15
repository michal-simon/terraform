#!/bin/bash

# Install SaltStack
# Only Ubuntu 18.04
# wget -O - https://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
#
# curl -L https://bootstrap.saltstack.com -o /tmp/install_salt.sh;
# sudo sh /tmp/install_salt.sh -P -M;

# Copies files
sudo mkdir -p /srv
sudo cp -R salt /srv
sudo cp -R pillar /srv

# Provisioning with SaltStack
sudo salt-call --local --pillar-root=/srv/pillar/ --file-root=/srv/salt/ state.apply;
