call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    map <space>n :NERDTreeToggle<CR>
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && 
                \ !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | 
                \ exe 'cd '.argv()[0] | endif
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && 
                \ b:NERDTree.isTabTree()) | q | endif

Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Use tab for trigger completion with characters ahead and navigate.
	" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
	" other plugin before putting this into your config.
	inoremap <silent><expr> <TAB>
	      \ pumvisible() ? "\<C-n>" :
	      \ <SID>check_back_space() ? "\<TAB>" :
	      \ coc#refresh()
	inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
	
	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction
	
	" Use <c-space> to trigger completion.
	if has('nvim')
	  inoremap <silent><expr> <c-space> coc#refresh()
	else
	  inoremap <silent><expr> <c-@> coc#refresh()
	endif
	" GIT 
Plug 'tpope/vim-fugitive'

Plug 'terryma/vim-multiple-cursors' 

Plug 'ryanoasis/vim-devicons'

Plug 'rhysd/vim-grammarous'
set t_Co=256
	" gloabl theme
Plug 'joshdick/onedark.vim'
let g:onedark_termcolors=16 
let g:onedark_terminal_italics=1 " Italics comment

Plug 'ryuta69/elly.vim'

Plug 'srcery-colors/srcery-vim'
	" status line 
Plug 'itchyny/lightline.vim' 

let g:lightline = {
      \ 'colorscheme': 'srcery',
      \ 'active': {
      \   'left': [ [ 'bufnr'],
	  \				[ 'mode', 'paste' ],
      \             [ 'filetype', 'gitbranch', 'readonly', 'modified' ] ],
	  \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileencoding' ] ]
	  \},
      \ 'inactive': {
      \   'left': [ [ 'bufnr'],
      \             [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'GitBranch',
      \   'filetype': 'FileType',
      \ },
	  \ 'component': {
	  \   'readonly': '%{&readonly?"":""}',
	  \   'fileencoding' : '%{&fileencoding} %{WebDevIconsGetFileFormatSymbol()}'
	  \ },
	  \ 'separator': { 'left': '', 'right': '' },
	  \ 'subseparator': { 'left': '', 'right': '' },
      \ 'mode_map': {
	  \ 'n' : '<Normal Mode>',
	  \ 'i' : '<Insert Mode>',
	  \ 'R' : '<Replace Mode>',
	  \ 'v' : '<Visual Mode>',
	  \ 'V' : '<VisualLine Mode>',
	  \ "\<C-v>": '<VisualOne Mode>',
	  \ 'c' : '<Command Mode>',
	  \ 's' : '<S>',
	  \ 'S' : '<Sl>',
	  \ "\<C-s>": '<Sb>',
	  \ 't': '<T>',
	  \ },
      \ }
call plug#end()

function! FileType() abort
	let l:f = WebDevIconsGetFileTypeSymbol()
	return ''.expand('%:p:t').' '.l:f.''
endfunction

function! GitBranch() abort
	let _ = FugitiveHead()
	return strlen(_) ? _.'  ' : ''
endfunction 

	" NVIM style 
syntax on
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
set number relativenumber

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END 

" Template for different files type
autocm BufNewFile *.c r $HOME/.config/nvim/templates/t.c
autocm BufNewFile *.py r $HOME/.config/nvim/templates/t.py
autocm BufNewFile *.sh r $HOME/.config/nvim/templates/t.sh
