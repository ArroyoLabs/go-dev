#!/bin/sh

# Install Hugo, https://gohugo.io/

# Install w/ Homebrew
# ./homebrew.sh
# brew install hugo

# Install from source
mkdir $HOME/src
cd $HOME/src
git clone https://github.com/gohugoio/hugo.git
cd hugo
go install --tags extended

echo "Hugo installation complete"
