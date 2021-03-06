#!/bin/bash
set -e

clear

# check for root privilege
# if [ "$(id -u)" != "0" ]; then
#    echo " this script must be run as root" 1>&2
#    echo
#    exit 1
# fi

# print status message
echo " preparing your server; this may take a few minutes ..."

# update repos
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y autoremove
apt-get -y purge

apt-get install -y openssh-server

# remove myself to prevent any unintended changes at a later stage
# rm $0

# finish
echo " DONE; rebooting ... "

# reboot
reboot
