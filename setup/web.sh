#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Remove outdated versions from the cellar.
brew cleanup

# Redis
brew install redis
brew services start redis

# Docker
brew install docker

# Postman
brew install postman

brew install virtualbox
brew install virtualbox-extension-pack
brew install vagrant

brew install chromedriver
brew install google-chrome

brew install ngrok

brew install iterm2

brew install sourcetree
brew install sequelpro
brew install mysqlworkbench

brew install font-fira-code



# Others
brew install slack
brew install alfred
brew install app cleaner
brew install zoomus
brew install adobe-acrobat-reader
brew install etcher
# Node
sh -c "$(curl -fsSL https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh)"
npm install -g gulp
npm install -g bower
npm install -g oclif
npm install -g eslint
npm install -g yarn
npm install -g @angular/cli
npm install -g less
