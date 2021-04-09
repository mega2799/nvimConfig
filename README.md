# NVIM

`sudo apt install nvim`

create the config directory in which to put the init.vim

`mkdir .config/nvim`

Move the init.vim into ./config/nvim
 # Basic conf
Add the Vim-plug Manager

`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
1) Begin the section with call plug#begin()
2) List the plugins with Plug commands
3) call plug#end() to update &runtimepath and initialize plugin system 

Nvim command `:PlugInstall` 

 # Add Fonts
 `https://www.linux.com/topic/desktop/how-manage-fonts-linux/`
 
 ` sudo apt-get install -y fonts-powerline`
 
 `yay -S powerline` ==> ARCH
 
 ` sudo apt-get install -y fonts-font-awesome`
 
 `yay -S awesome-terminal-fonts` ==> ARCH
 
 # COC
 Install NodeJS <br> 
 
 `sudo apt install nodejs` <br>
