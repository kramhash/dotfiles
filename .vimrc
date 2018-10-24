syntax enable

set whichwrap=h,l
set number
set hidden
set tabstop=2

map j gj
map k gk

inoremap jk <ESC>

"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/bundles')
  call dein#begin('~/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:

  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('othree/yajs.vim')
  call dein#add('dracula/vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on


" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------



colorscheme dracula
