#!/bin/sh

#net-tools -> ifconfig
yum install -y java-1.8.0-openjdk wget zsh git docker net-tools vim
sudo mv /tmp/install/hosts /etc/hosts
sudo chown root:root /etc/hosts
hostnamectl --static set-hostname centos
chsh -s /bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


