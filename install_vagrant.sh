#!/bin/bash -eu

sudo dnf install -y \
  ansible \
  git \
  python-dnf

mkdir -p ~/Development/github.com/assout/
cd ~/Development/github.com/assout/
git clone https://github.com/assout/ansible-playbooks.git
cd ./ansible-playbooks
git remote set-url origin git@github.com:assout/ansible-playbooks.git

ansible-playbook -i vagrant site.yml -Kvvv --skip-tags "fail"

