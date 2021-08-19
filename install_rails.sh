#!/bin/sh
set -e

echo "install bundler"
gem install bundler

echo "install yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn -y
yarn -v

echo "install rails"
gem install rails -v 6.0.3.4
rails -v
