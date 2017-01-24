#!/bin/sh
set -e

cd ${HOME}/bash_autosetup
cat ${HOME}/bash_autosetup/vimrcs/basic.vim > ~/.vimrc
echo "Installed the Basic Vim configuration successfully! Enjoy :-)"
