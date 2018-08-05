#!/bin/sh

# Install Hugo, https://gohugo.io/
apt update
apt install -y snapd
systemctl start snapd.service

snap install hugo --channel=extended

echo "Hugo installation complete"
