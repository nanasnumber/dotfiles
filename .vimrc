set nocompatible
execute pathogen#infect()
syntax on
colorscheme cobalt2
set t_Co=256
filetype plugin indent on
autocmd VimEnter * NERDTree
let g:NERDTreeMouseMode=3
set mouse=a
filetype plugin indent on
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
let NERDTreeShowHidden=1

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']
