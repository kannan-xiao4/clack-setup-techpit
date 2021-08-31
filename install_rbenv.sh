#!/bin/sh
set -e

echo "install rbenv/ruby-dev"
sudo apt install rbenv ruby-dev -y

echo "install rbenv 2.7.2"
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
rbenv install 2.7.2

echo "setting path about ruby"
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'unset GEM_HOME GEM_PATH' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
