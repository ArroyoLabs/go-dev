#!/bin/sh

# this will get ran with the docker file and run the default scripts

# linux package installs
apt install vim -y

# Install Hugo
./hugo.sh

echo "Setup done."
