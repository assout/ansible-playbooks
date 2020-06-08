#!/bin/bash -eu

sudo dnf install -y python-dnf
sudo dnf install -y ansible git

mkdir -p ~/Development/src/github.com/assout/
cd ~/Development/src/github.com/assout/
git clone git@github.com:assout/ansible-playbooks.git
cd ./ansible-playbooks

ansible-playbook site.yml -Kvvv --skip-tags "fail"
