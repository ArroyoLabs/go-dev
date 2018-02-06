#!/bin/sh

# this will get ran with the docker file and run the default scripts

# linux installs
apt-get -y install vim

# Install glide
./dep.sh

echo "Setup done."
