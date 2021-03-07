# NVIM

`sudo apt install nvim`

create the config directory in which to put the init.vim

`mkdir .config/nvim`
 # Basic conf
`syntax on
filetype plugin on
set background=dark
set termguicolors
" colorscheme onedark
" colorscheme elly
colorscheme srcery  
set hls!
set laststatus=2
set tabstop=4
set smartindent
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number
set splitbelow
set splitright
set noshowmode
set scrolloff=5
set cursorline
set colorcolumn=80
set nofoldenable
set number relativenumber` <br> 
Now we add the Vim-plug Manager <br> 
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
1) Begin the section with call plug#begin()
2) List the plugins with Plug commands
3) call plug#end() to update &runtimepath and initialize plugin system 

 # Add Fonts
 `https://www.linux.com/topic/desktop/how-manage-fonts-linux/`
 ` sudo apt-get install -y fonts-powerline`
 ` sudo apt-get install -y fonts-font-awesome`
 # COC
 Install NodeJS <br> 
 `sudo apt install nodejs` <br> 
 Move in init.vim coc <br>
