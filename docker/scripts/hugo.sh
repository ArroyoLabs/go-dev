#!/bin/sh

# Install Hugo, https://gohugo.io/, with debian package from Github
apt-get update
wget https://github.com/gohugoio/hugo/releases/download/v0.46/hugo_0.46_Linux-64bit.deb
dpkg -i hugo*.deb
ln -s /usr/local/bin/hugo /usr/bin/hugo 
rm hugo*.deb

echo "Hugo installation complete"
