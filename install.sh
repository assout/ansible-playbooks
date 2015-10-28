#!/bin/bash

mkdir -p ~/Development
cd ~/Development
git clone https://github.com/assout/ansible-playbooks.git
cd ./ansible-playbooks

sudo dnf install ansible -y
ansible-playbook site.yml -Kvvv --skip-tags "fail"

git remote set-url origin git@github.com:assout/ansible-playbooks.git

