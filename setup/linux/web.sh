#!/usr/bin/env bash

# Install command-line tools using snap and apt.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update package registry and update packages
sudo apt update
sudo apt upgrade

# Redis
sudo apt install redis-server -y
sudo snap install redis-desktop-manager

# Docker
sudo snap install docker

# Postman
sudo snap install postman

# VS Code
sudo snap install vscode --classic

# CopyQ 
   
sudo apt install copyq -y

# nginx
sudo apt install nginx
sudo ufw allow 'Nginx HTTP'

# mysql
sudo apt install mysql-server -y
sudo apt install mysql-workbench -y

# php
sudo apt install php-fpm php-mysql php-cli php-zip -y

# composer 
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer  

# laravel
cd  /home/$USER/.composer
composer global require laravel/installer
cd ~
# chromium
sudo snap install chromium

# ngrok
sudo snap install ngrok

# gitkraken
sudo snap install gitkraken

# font
sudo apt install fonts-firacode -y

# Others
snap install slack --classic



# Node
sudo rm -r ~/.nvm
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh)"
sudo chown -R $USER:$USER ~/.nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
nvm install --lts 

npm install -g gulp
npm install -g bower
npm install -g oclif
npm install -g eslint
npm install -g yarn
npm install -g @angular/cli
npm install -g less

sudo apt auto-remove -y
sh ./zsh.sh
python3 ~/dotfiles/install.py
sudo shutdown -r
