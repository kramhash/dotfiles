syntax enable

set whichwrap=h,l
set number
set hidden
set tabstop=2

map j gj
map k gk

inoremap jk <ESC>

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'

Plug 'othree/yajs.vim'

Plug 'dracula/vim'

call plug#end()



filetype plugin indent on


colorscheme dracula

