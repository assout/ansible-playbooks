#!/bin/bash

mkdir -p ~/.ghq/github.com/assout/
cd ~/.ghq/github.com/assout/
git clone https://github.com/assout/ansible-playbooks.git
cd ./ansible-playbooks
git remote set-url origin git@github.com:assout/ansible-playbooks.git

sudo dnf install ansible -y
sudo dnf install python-dnf -y
ansible-playbook site.yml -Kvvv --skip-tags "fail"

