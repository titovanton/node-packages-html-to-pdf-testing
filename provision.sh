#!/usr/bin/env bash

apt-get update
apt-get upgrade -y
apt-get install -y htop
apt-get install -y git
# apt-get install -y openjdk-7-jre-headless

# hostname
hostname node-pdf
echo "127.0.0.1 node-pdf" >> /etc/hosts
echo "node-pdf" > /etc/hostname

# .bashrc
echo "cd /vagrant/project" >> /home/vagrant/.bashrc

# node
apt-get autoremove -y node
apt-get install -y build-essential
curl -sL https://deb.nodesource.com/setup_4.x | bash -
apt-get install -y nodejs
