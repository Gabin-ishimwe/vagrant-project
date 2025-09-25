#!/bin/bash

echo "============================================="
echo "Installing Ansible..."
echo "============================================="

# Update system packages
sudo apt-get update -y

# Install prerequisite packages
echo "Installing prerequisite packages..."
sudo apt-get install -y software-properties-common

# Add Ansible repository and install
echo "🔧 Adding Ansible repository..."
sudo add-apt-repository --yes --update ppa:ansible/ansible

echo "Installing Ansible..."
sudo apt-get install -y ansible

# Verify Ansible installation
echo "Verifying Ansible installation..."
sudo ansible --version

echo "============================================="
echo "Ansible installation complete!"
echo "============================================="


# Generate SSH key for vagrant user
echo "Verifying SSH key for vagrant user..."
sudo -u vagrant ssh-keygen -t rsa -b 4096 -f /home/vagrant/.ssh/id_rsa -N ""

echo "============================================="
echo "SSH key generation complete!"
echo "============================================="

