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
