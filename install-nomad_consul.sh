#!/usr/bin/env bash

# Install tools
sudo apt-get install unzip curl sshpass -y

# Install nomad
sudo curl -sSL https://releases.hashicorp.com/nomad/1.0.4/nomad_1.0.4_linux_amd64.zip -o nomad.zip
sudo unzip nomad.zip
sudo cp nomad -d /usr/bin/nomad
sudo chmod +x /usr/bin/nomad
sudo rm nomad.zip

# Install consul
sudo curl -sSL https://releases.hashicorp.com/consul/1.9.4/consul_1.9.4_linux_amd64.zip -o consul.zip
sudo unzip consul.zip
sudo cp consul -d /usr/bin/consul
sudo chmod +x /usr/bin/consul
sudo rm consul.zip
