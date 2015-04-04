# Foundation-Vagrant

An easy way to quicky start work on Foundation 5 projects. Running ubuntu/trusty32 this Vagrant script installs everything required to start a SASS based Foundation project (http://foundation.zurb.com/docs/sass.html)

It also runs Apache. 

To start:

vagrant up

vagrany ssh

cd /var/www/html

foundation new MY_PROJECT

cd MY_PROJECT

bundle

compass watch -p

See your projects at http://127.0.0.1:4567/