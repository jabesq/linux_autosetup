#!/bin/sh
set -e

cd ${HOME}/linux_autosetup
cat ${HOME}/linux_autosetup/vimrcs/basic.vim > ~/.vimrc
echo "Installed the Basic Vim configuration successfully! Enjoy :-)"
