#!/bin/sh
set -e

cd ~/linux_autosetup

echo 'set runtimepath+=~/linux_autosetup

source ~/linux_autosetup/vimrcs/basic.vim
source ~/linux_autosetup/vimrcs/filetypes.vim
source ~/linux_autosetup/vimrcs/plugins_config.vim
source ~/linux_autosetup/vimrcs/extended.vim

try
source ~/linux_autosetup/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
