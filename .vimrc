set nocompatible              " be iMproved, required
filetype off                  " required

let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')

if !filereadable(vundle_readme)
  echo "Installing Vundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  echo "start vim and run :PluginInstall"
endif

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
Plugin 'gorodinskiy/vim-coloresque'
" colorscheme
Plugin 'tomasr/molokai'
call vundle#end()            " required
filetype plugin indent on    " required


colorscheme molokai
" statusbar
set laststatus=2
set titlestring=%F
set number
set title
set hlsearch 
set incsearch
set softtabstop=2  
set expandtab


set t_Co=256

" ruler and highlight
set ruler 
set colorcolumn=80
highlight ColorColumn ctermbg=243
highlight OverLength ctermbg=243 ctermfg=white 
match OverLength /\%81v.\+/


set wildmenu
set hidden  
set mouse=a
set pastetoggle=<F10>


set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

