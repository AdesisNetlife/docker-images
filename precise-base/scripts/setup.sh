#!/bin/sh

apt-get update

apt-get -y -f install curl python-software-properties nano supervisor git uuid-dev libtool \
automake pkg-config unzip make build-essential rsync openssh-server ssh

mkdir /var/run/ssh

useradd -d /home/ubuntu -m ubuntu
adduser ubuntu sudo

echo 'ubuntu:ubuntu' > /home/ubuntu/passwdfile
cat /home/ubuntu/passwdfile | chpasswd

echo 'root:root' > /root/passwdfile
cat /root/passwdfile | chpasswd