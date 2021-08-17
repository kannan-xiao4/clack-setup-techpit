echo "remove rvm"
rvm seppuku || echo "aleady removed rvm"
rm -rf /etc/rvmrc
rm -rf ~/.rvmrc

# check rvm setting
# grep rvm ~/.bash_profile 
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

echo  "overwrite profile"
cp .bash_profile ~/.bash_profile
cp .bashrc ~/.bashrc
cp .profile ~/.profile
cp .zshrc ~/.zshrc

echo take profile
exec bash -l
