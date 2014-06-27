#!/bin/bash

# Current folder
cwd=$(pwd)

update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

apt-get update -qy
export DEBIAN_FRONTEND=noninteractive
apt-get upgrade -qy

# Node (nvm)
curl https://raw.githubusercontent.com/creationix/nvm/v0.6.1/install.sh | sudo -u vagrant sh
source ~vagrant/.nvm/nvm.sh
nvm install v0.10.28
nvm use 0.10
cd /vagrant
npm install
