"standard settings
set t_Co=256
set mouse=a
set number
set background=dark
set modeline

"spacing and tab settings
set tabstop=8 
set expandtab 
set shiftwidth=4 
set softtabstop=4
set autoindent

set runtimepath+=$HOME/.vim/plugins

set statusline+=%#warningmsg#
set statusline+=%{SynasticStatuslineFlag()}
set statusline+=%*

"Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
"place all plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
call vundle#end()

"indent guides
filetype plugin on
filetype indent plugin on

let g:indentLine_conceallevel = 1
let g:indentLine_color_term = 42
let g:indentLine_char = '|'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
syntax on
