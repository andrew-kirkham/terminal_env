set t_Co=256
set mouse=a
set number
set background=dark
set modeline

set tabstop=8 
set expandtab 
set shiftwidth=4 
set softtabstop=4
set autoindent

set runtimepath+=$HOME/.vim/plugins

filetype plugin on
filetype indent plugin on

syntax on

let g:indentLine_conceallevel = 1
let g:indentLine_color_term = 42
let g:indentLine_char = '|'
