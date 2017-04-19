#!/bin/sh
echo "installing virtualbox guest additions"
sed -i 's/main$/main contrib/' /etc/apt/sources.list
apt-get update

# install virtualbox additions build dependancies
apt-get --yes install --no-install-recommends linux-headers-amd64 virtualbox-guest-dkms

# cleanup virtualbox stuff
apt-get --yes remove linux-headers-amd64
apt-get --yes autoremove
apt-get --yes clean
