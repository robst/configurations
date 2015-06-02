set number
set title
set hlsearch 
set incsearch
"set list "
set softtabstop=2  
set expandtab
set ruler
set colorcolumn=80
set wildmenu
set hidden  

"set wildmode=longest,list"

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
