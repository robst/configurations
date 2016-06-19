set nocompatible              " be iMproved, required
filetype off                  " required

let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')

if !filereadable(vundle_readme)
  echo "Installing Vundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

  autocmd VimEnter * PluginInstall
  
  echo "don't forget to apt-get install ack-grep for Ack"
endif
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should installs
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" doing :PluginInstall for this
" search plugin ack
Plugin 'mileszs/ack.vim'
Plugin 'VundleVim/Vundle.vim'
" statusbar
Plugin 'Lokaltog/vim-powerline'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-bundler.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'gorodinskiy/vim-coloresque'
" colorscheme
Plugin 'tomasr/molokai'

Plugin 'Valloric/YouCompleteMe.git'

Plugin 'scrooloose/nerdtree'
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
" spaces instead tab
set expandtab
set shiftwidth=2
set softtabstop=2  
set cursorline
set t_Co=256

" ruler and highlight
set ruler 
set colorcolumn=80
highlight ColorColumn ctermbg=243
highlight OverLength ctermbg=243 ctermfg=white 
match OverLength /\%81v.\+/
" set visual style more colorfull
hi Visual ctermbg=178 ctermfg=238
hi CursorLine term=none cterm=none ctermbg=236
set wildmenu
set hidden  
set mouse=a

set pastetoggle=<F10>
" nerdtree
map <F2> :NERDTreeToggle<CR>
" reset search
"map <F3> :nohlsearch<CR>

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
" open nerdtree if no args
autocmd VimEnter * if !argc() | NERDTree | endif

set swapfile
set dir=/tmp

" display buffer by pressing f10
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

let NERDTreeMapOpenInTab='<ENTER>'
