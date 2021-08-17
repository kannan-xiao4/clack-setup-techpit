echo "install rbenv/ruby-dev"
sudo apt install rbenv ruby-dev -y

echo "install rbenv 2.7.2"
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
rbenv install 2.7.2

echo "setting path about ruby"
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

echo "install ruby 2.7.2"
rbenv local 2.7.2
ruby -v

echo "reset gem path"
unset GEM_HOME GEM_PATH

echo "install bundler"
gem install bundler

echo "install yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
yarn -v

echo "install rails"
gem install rails -v 6.0.3.4
rails -v
