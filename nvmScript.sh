#!/bin/bash

sudo apt-get -y update
sudo apt-get -y install build-essential libssl-dev
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh -o install_nvm.sh
bash install_nvm.sh
rm -rf install_nvm.sh
