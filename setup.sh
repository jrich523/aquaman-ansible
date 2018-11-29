#!/bin/bash

ansible_repo="https://github.com/jrich523/aquaman-ansible.git"
environment="prod"
playbook="devsetup.yml"

apt-get install dirmngr -y
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | tee /etc/apt/sources.list.d/ansible.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
# can use apt-ket import
# curl "http://ppa.launchpad.net/ansible/ansible/ubuntu/dists/trusty/Release.gpg" | apt-key add -
apt-get update -y
apt-get install ansible -y
ansible-pull ${playbook} -U ${ansible_repo} -f --clean --accept-host-key -i 127.0.0.1 -e git_respository=${ansible_repo} -e environment=${environment}