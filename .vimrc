set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should installs
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-bundler.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'JulesWang/css.vim'
Plugin 'pangloss/vim-javascript.git'
Plugin 'hail2u/vim-css3-syntax.git'

call vundle#end()            " required
filetype plugin indent on    " required

" statusbar
set laststatus=2
set titlestring=%F
set number
set title
set hlsearch 
set incsearch
set softtabstop=2  
set expandtab
set ruler
set colorcolumn=80
highlight ColorColumn guibg=7
set wildmenu
set hidden  
set mouse=a
set pastetoggle=<F10>

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

