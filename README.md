# Foundation-Vagrant

An easy way to quicky start work on Foundation 5 projects. Running ubuntu/trusty32 this Vagrant script installs everything required to start a SASS based Foundation project (http://foundation.zurb.com/docs/sass.html)

To start:

vagrant up

vagrany ssh

cd /vagrant

foundation new MY_PROJECT

cd MY_PROJECT

gem install bundler

bundle exec compass watch