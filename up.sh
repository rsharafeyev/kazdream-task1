#!/usr/bin/env bash

clear
echo "Starting virtual machines"
vagrant up
sleep 5
echo "Deploy hello-world & nginx load balancer"
sshpass -p "vagrant" ssh -o StrictHostKeyChecking=no vagrant@192.168.33.11 "sudo chmod +x /vagrant/deploy.sh && sudo sh /vagrant/deploy.sh"
