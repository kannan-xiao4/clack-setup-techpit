# remove rvm
rvm seppuku -y

# check rvm setting
# grep rvm ~/.bash_profile 
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# overwrite profile
cp .bash_profile ~/.bash_profile
cp .bashrc ~/.bashrc
cp .profile ~/.profile
cp .zshrc ~/.zshrc

# take profile
exec bash -l

# install rbenv / ruby-dev
sudo apt install rbenv ruby-dev -y

# install rbenv 2.7.2
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
rbenv install 2.7.2

# setting path about ruby
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

# install ruby 2.7.2
rbenv local 2.7.2
ruby -v

# reset gem path
unset GEM_HOME GEM_PATH

# install bundler
gem install bundler

# install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
yarn -v

# install rails
gem install rails -v 6.0.3.4
rails -v

