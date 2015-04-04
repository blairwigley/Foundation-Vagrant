#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

#Install node.js
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup | bash -
apt-get install -y nodejs

#Install .git
apt-get install -y git

#Install Ruby
apt-get install -y ruby-dev

#Install Foundation Stuff

gem uninstall sass
gem uninstall compass

npm install -g bower grunt-cli
gem install foundation

gem install sass -v 3.4.0

gem install compass
gem install bundler
bundle install

#Create Web Folder
mkdir  -p /var/www/html