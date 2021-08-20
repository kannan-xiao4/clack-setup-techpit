#!/bin/sh
set -e

echo "install yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn -y
yarn -v

echo "remove rvm"
rvm seppuku || echo "aleady removed rvm"
rm -rf /etc/rvmrc
rm -rf ~/.rvmrc

echo  "overwrite profile"
mv ~/.bash_profile ~/.bash_profile.bak
cp .bash_profile ~/.bash_profile
mv ~/.bashrc ~/.bashrc.bak
cp .bashrc ~/.bashrc
mv ~/.profile ~/.profile.bak
cp .profile ~/.profile
mv ~/.zshrc ~/.zshrc.bak
cp .zshrc ~/.zshrc

echo "take profile"
exec bash -l
