set nocp
execute pathogen#infect()
syntax enable
set background=dark
" colorscheme rigel
" colorscheme truedark
colorscheme gruvbox
" colorscheme vividchalk
filetype plugin indent on

"NERDTree setting
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeMouseMode=3

set encoding=utf-8
set mouse=a
set number
set relativenumber
set wrap
" set linebreak
set breakindent
set formatoptions=tcqrn1
set scrolloff=1
set backspace=indent,eol,start
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
let g:ale_completion_enabled = 1
let g:jsx_ext_required = 1


"no error bell and visual bell
set noeb vb t_vb=

"column setting
set colorcolumn=80
highlight ColorColumn ctermbg=darkgrey

"current line setting
" set cursorline
" hi CursorLine cterm=NONE ctermbg=235
" :set cursorcolumn

"commnet setting
hi Comment ctermfg=darkgray

"trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

"emmet
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"vim-closetag (plugin for enable css syntax highlight and indent in js tagged
"template literal)
let g:htl_css_templates=1

" detect hugo/go html then set syntax
function DetectGoHtmlTmpl()
    if expand('%:e') == "html" && search("{{") != 0
        set filetype=gohtmltmpl
    endif
endfunction

augroup filetypedetect
    au! BufRead,BufNewFile * call DetectGoHtmlTmpl()
augroup END
" end detect hugo/go html then set syntax

" Set line break for Markdown files
augroup markdown_settings
  autocmd!
  autocmd FileType markdown setlocal linebreak
augroup END

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
