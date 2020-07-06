set nocp
execute pathogen#infect()
syntax enable
set background=dark
colorscheme eldar
filetype plugin indent on

"NERDTree stuff
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeMouseMode=3

set mouse=a
set number
set linespace=3
set ruler
set visualbell
set encoding=utf-8
set wrap
set textwidth=79
set formatoptions=tcqrn1
set scrolloff=1
set backspace=indent,eol,start
set tabstop=4 
set softtabstop=4 
set shiftwidth=4
set listchars=tab:!·,trail:·
