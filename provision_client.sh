#!/bin/bash

# Update system packages
sudo apt-get update -y
sudo apt-get upgrade -y

# Configure firewall
sudo ufw allow ssh

# Generate SSH key for vagrant user
sudo -u vagrant ssh-keygen -t rsa -b 4096 -f /home/vagrant/.ssh/id_rsa -N ""
