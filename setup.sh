#!/bin/sh
set -e

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
