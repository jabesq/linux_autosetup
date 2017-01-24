#!/bin/sh
set -e

cd ${HOME}/bash_autosetup

echo 'set runtimepath+=${HOME}/bash_autosetup

source ${HOME}/bash_autosetup/vimrcs/basic.vim
source ${HOME}/bash_autosetup/vimrcs/filetypes.vim
source ${HOME}/bash_autosetup/vimrcs/plugins_config.vim
source ${HOME}/bash_autosetup/vimrcs/extended.vim

try
source ${HOME}/bash_autosetup/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
