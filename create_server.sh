#!/bin/bash
cp ./Vagrantfile.template Vagrantfile
DISTRIBUTION='generic\/debian10'
# export DISTRIBUTION="debian/buster64"
# export DISTRIBUTION="centos/8"

PROVIDER="parallels"
# export PROVIDER="virtualbox"

HOSTNAME="devserver"

sed -i -e "s/DISTRIBUTION/$DISTRIBUTION/g ; s/PROVIDER/$PROVIDER/g ; s/HOSTNAME/$HOSTNAME/g" Vagrantfile

