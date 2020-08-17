#!/bin/sh

echo "Checking if we are running Centos 8 underneath..."
test -f /etc/centos-release && grep "CentOS Linux release 8" /etc/centos-release || exit

rpm -q epel-release || sudo yum install -y epel-release
rpm -q ansible || sudo yum install -y ansible

wget rpi4-centos-workstation.yml

ansible-playbook rpi4-centos-workstation.yml
