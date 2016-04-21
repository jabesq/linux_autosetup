cd ${HOME}/linux_autosetup

echo 'set runtimepath+=${HOME}/linux_autosetup

source ${HOME}/linux_autosetup/vimrcs/basic.vim
source ${HOME}/linux_autosetup/vimrcs/filetypes.vim
source ${HOME}/linux_autosetup/vimrcs/plugins_config.vim
source ${HOME}/linux_autosetup/vimrcs/extended.vim

try
source ${HOME}/linux_autosetup/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
