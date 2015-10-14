#!/bin/bash

mkdir -p ~/Development
cd ~/Development
git clone https://github.com/assout/ansible-playbooks.git
sudo dnf install ansible
cd ./ansible-playbooks
ansible-playbook main.yml -Kvvv

