echo "include ~/linux_autosetup/ALL.nanorc" > ~/.nanorc
echo "source ~/linux_autosetup/bashrc" > ~/.bashrc
sudo -E add-apt-repository ppa:git-core/ppa -y
sudo apt-get -qq update 
sudo apt-get -qq upgrade -y
sudo apt-get -qq autoremove
sudo apt-get -qq autoclean
sudo apt-get -qq install git terminator tree diffuse meld ctags
git --version
terminator --version
tree --version



sh ~/linux_autosetup/install_awesome_vimrc.sh

echo "Please enter Git global username, followed by [ENTER]:"
read name

echo "Please enter Git global user mail, followed by [ENTER]:"
read mail

sed 's/name\ \=/name\ \= \'"$name"'/g' gitconfig | sed 's/email\ \=/email\ \= \'"$mail"'/g' > ~/.gitconfig

