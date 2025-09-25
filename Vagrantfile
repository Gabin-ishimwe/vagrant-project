# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.box_version = "202508.03.0"

  # Define Ansible Control Node - Ansible VM
  config.vm.define "control_node" do |vm1|
    vm1.vm.hostname = "control_node"
    vm1.vm.network "private_network", ip: "192.168.56.10"
    
    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "control_node"
      vb.memory = "1024"  # 1GB RAM
      vb.cpus = 1
    end
    
    # Provision with shell script
    vm1.vm.provision "shell", path: "provision_control_node.sh"
  end

  # Define VM2 - Server VM
  config.vm.define "vm2" do |vm2|
    vm2.vm.hostname = "servervm"
    vm2.vm.network "private_network", ip: "192.168.56.11"
    vm2.vm.network "forwarded_port", guest: 80, host: 8089
    
    vm2.vm.provider "virtualbox" do |vb|
      vb.name = "vm2"
      vb.memory = "4096"  # 4GB RAM
      vb.cpus = 2
    end
    
    # Provision with shell script
    # vm2.vm.provision "shell", path: "provision_server.sh"
  end
  

  # Define VM3 - Client VM
  config.vm.define "vm3" do |vm3|
    vm3.vm.hostname = "clientvm"
    vm3.vm.network "private_network", ip: "192.168.56.12"
    
  vm3.vm.provider "virtualbox" do |vb|
    vb.name = "vm3"
    vb.memory = "4096"  # 4GB RAM
      vb.cpus = 2
    end

    # Provision with shell script
    # vm3.vm.provision "shell", path: "provision_client.sh"
  end

  # Define VM4 - Database Server VM
  config.vm.define "vm4" do |vm4|
    vm4.vm.hostname = "databasevm"
    vm4.vm.network "private_network", ip: "192.168.56.13"
    
  vm4.vm.provider "virtualbox" do |vb|
    vb.name = "vm4"
    vb.memory = "4096"  # 4GB RAM
      vb.cpus = 2
    end

    # Provision with shell script
    # vm4.vm.provision "shell", path: "provision_database.sh"
  end
end
