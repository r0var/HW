#!/usr/bin/env bash
sudo adduser hw8
sudo mkdir /opt/hw8
sudo usermod -d /opt/hw8 hw8
sudo usermod -aG wheel hw8
sudo sh -c "echo '127.0.0.1 myownapp.com' >> /etc/hosts"
PAS="PasswordAuthentication"
LOGIN="PermitRootLogin"
CONF="/etc/ssh/sshd_config"

CHECK=$(sudo grep "^\s*$LOGIN\s*no" "$CONF")
if [ ! -z "$CHECK" ]; then sudo sed -i "s/$CHECK/$LOGIN yes/" "$CONF"; else
CHECK=$(sudo grep "^\s*$LOGIN\s*yes" "$CONF")
if [ -z "$CHECK" ]; then sudo sh -c "echo '$LOGIN yes' >> $CONF" ; fi ; fi

CHECK=$(sudo grep "^\s*$LOGIN\s*yes" "$CONF")
if [ ! -z "$CHECK" ]; then sudo sed -i "s/$CHECK/$LOGIN no/" "$CONF"; else
CHECK=$(sudo grep "^\s*$LOGIN\s*no" "$CONF")
if [ -z "$CHECK" ]; then sudo sh -c "echo '$LOGIN no' >> $CONF" ; fi ; fi

sudo yum install -y mc vim git
sudo sh -c "echo 'nameserver 8.8.8.8' > /etc/resolv.conf"
sudo sh -c "echo 'nameserver 1.1.1.1' >> /etc/resolv.conf"

if ! ping -c1 myownapp.com > /dev/null 2>&1; then
sudo sh -c "echo '127.0.0.1 myownapp.com' >> /etc/hosts"; fi 

DEF=$(ip route | grep default | awk '{print $3}' | cut -f1-3 -d'.')
echo $(ip a | grep "$DEF" | awk '{print $2}')

sudo mkdir /var/log/myownapp
sudo chown hw8 /var/log/myownapp