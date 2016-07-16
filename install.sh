#!/bin/bash -eu

sudo dnf install -y python-dnf
sudo dnf install -y ansible git

mkdir -p ~/Development/src/github.com/assout/
cd ~/Development/src/github.com/assout/
git clone https://github.com/assout/ansible-playbooks.git
cd ./ansible-playbooks
git remote set-url origin git@github.com:assout/ansible-playbooks.git

ansible-playbook site.yml -Kvvv --skip-tags "fail"

