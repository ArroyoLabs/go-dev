#!/bin/sh

# Install Hugo Extended, https://gohugo.io/, with debian package from Github
apt-get update
wget https://github.com/gohugoio/hugo/releases/download/v0.46/hugo_extended_0.46_Linux_64bit.deb
dpkg -i hugo*.deb
ln -s /usr/local/bin/hugo /usr/bin/hugo 
rm hugo*.deb

echo "Hugo Extended installation complete"
