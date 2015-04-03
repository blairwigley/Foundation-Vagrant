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
#apt-get install -y ruby-full
apt-get install -y ruby-dev

apt-add-repository -y ppa:rael-gc/rvm
apt-get install -y rvm

rvm get stable
rvm use ruby --install


#Install Foundation Stuff
npm install -g bower grunt-cli
gem install foundation
gem install compass

#Create Web Folder
mkdir /var/www/html