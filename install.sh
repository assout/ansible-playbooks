#!/bin/bash

mkdir -p ~/Development
cd ~/Development
git clone https://github.com/assout/ansible-playbooks.git
sudo yum install ansible
cd ./ansible-playbooks
ansible-playbooks main.yml -Kvvv

