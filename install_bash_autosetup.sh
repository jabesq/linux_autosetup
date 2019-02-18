#!/bin/bash
mv ~/.nanorc ~/nanorc.old
mv ~/.bashrc ~/bashrc.old

echo "include ${HOME}/bash_autosetup/ALL.nanorc" > ~/.nanorc
echo "source ${HOME}/bash_autosetup/bashrc" > ~/.bashrc

if [ "$(uname)" == "Darwin" ]; then
    echo "DARWIN"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    sudo apt -y install software-properties-common python-software-properties

    if ! grep -q "git-core/ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
        echo "Updating repository in order to have access to the latest version of Git"
        sudo -E add-apt-repository ppa:git-core/ppa
        sudo apt-get -q update
        sudo apt-get -q upgrade
    fi

    sudo apt -y install git git-gui terminator tree diffuse meld ctags \
        gedit-plugins nfs-common vim-gtk gcc gcc-arm-linux-gnueabi\
        build-essential libc6-dev-i386 gtk+2.0 libqt4-dev pkg-config\
        python3.6 python3.6-dev python3.6-minimal python3.6-venv\
        python3-virtualenv libpython3.6-dev
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

pushd ${HOME}
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp "${HOME}"/bash_autosetup/tmux.conf "${HOME}"/.tmux.conf
popd

curl https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py | python3.6
pipsi install black
pipsi install pre-commit
pipsi install tox

echo "Installed the Linux autosetup configuration successfully! Enjoy :-)"

