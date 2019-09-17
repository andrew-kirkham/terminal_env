"standard settings
set t_Co=256
set mouse=a
set number
set background=dark
set modeline
set encoding=utf-8

"spacing and tab settings
set tabstop=8 
set expandtab 
set shiftwidth=4 
set softtabstop=4
set autoindent

set runtimepath+=$HOME/.vim/plugins

"Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
"place all plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tmhedberg/SimpylFold'
Plugin 'ambv/black'
Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
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
let g:ycm_autoclose_preview_window_after_completion=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <D-j>  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"auto open NERDTree 
autocmd vimenter * NERDTree
"auto run black on save of python3 files
autocmd BufWritePre *.py execute ':Black'

"enable folding
set foldmethod=indent
set foldlevel=99
set wildignore+=*.o,*.obj,*.pyc,*/node_modules/*
set bs=2

"key rebindings
"Folding with spacebar
nnoremap <space> za
let mapleader = ","


let python_highlight_all=1
syntax on

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
