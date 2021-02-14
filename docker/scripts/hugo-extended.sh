#!/bin/sh

# Install Hugo Extended, https://gohugo.io/, with debian package from Github
apt-get update
wget https://github.com/gohugoio/hugo/releases/download/v0.80.0/hugo_extended_0.80.0_Linux-64bit.deb
dpkg -i hugo*.deb
ln -s /usr/local/bin/hugo /usr/bin/hugo 
rm hugo*.deb

echo "Hugo extended installation complete"