set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-bundler.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'JulesWang/css.vim'

call vundle#end()            " required
filetype plugin indent on    " required


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

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

