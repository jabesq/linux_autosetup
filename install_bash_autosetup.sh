#!/bin/bash

echo "include ${HOME}/bash_autosetup/ALL.nanorc" > ~/.nanorc
echo "source ${HOME}/bash_autosetup/bashrc" > ~/.bashrc
#cp ${HOME}/bash_autosetup/tmux.conf ${HOME}/.tmux.conf

if [ "$(uname)" == "Darwin" ]; then
    echo "DARWIN"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then

    sudo apt -y install git vim-gtk gcc build-essential gtk+2.0 libqt4-dev \
			pkg-config build-essential libssl-dev libffi-dev python-dev
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    echo "MINGW32_NT"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    echo "MINGW64_NT"
fi

sh ${HOME}/bash_autosetup/install_awesome_vimrc.sh > /dev/null


echo "Please enter Git global username, followed by [ENTER]:"
read name

echo "Please enter Git global user mail, followed by [ENTER]:"
read mail

sed 's/name\ \=/name\ \= \'"$name"'/g' $HOME/bash_autosetup/gitconfig | sed 's/email\ \=/email\ \= \'"$mail"'/g' > ~/.gitconfig
echo "Installed the Linux autosetup configuration successfully! Enjoy :-)"

