call plug#begin()
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline'
call plug#end()

syntax on
set nocompatible              " required
filetype off                  " required
filetype plugin indent on
set expandtab
set relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set updatetime=300
set ruler
colorscheme palenight
