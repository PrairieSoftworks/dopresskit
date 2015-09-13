#!/bin/bash

apt-get update
apt-get upgrade -y

apt-get install apache2 php5 libapache2-mod-php5 php5-mcrypt python-dev python-setuptools -y

easy_install pip
pip install awscli

cp /vagrant/apache2.conf /etc/apache2/apache2.conf
cp /vagrant/presskit.conf /etc/apache2/sites-available/presskit.conf

a2dissite 000-default && sudo a2ensite presskit
service apache2 restart