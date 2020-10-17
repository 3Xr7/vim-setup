syntax enable
set mouse-=a

" set vim encoding to utf-8, this enables setting space in listchars
set encoding=utf-8

" Set show line numbers
set number

" Hightlight search matches
set hlsearch

" Set whitespace characters for tabs, spaces, and enable by default
set listchars=tab:>-,space:·
set list

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" Enable language complete suggestions
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Set the theme to hybrid material
set background=dark
colorscheme hybrid_material

" Automatically open NERDTree on start and focus file window
autocmd VimEnter * NERDTree | wincmd p

" Set F8 to toggle Tagbar
nmap <F8> :TagbarToggle<CR>

" Configure lightline to show git branch
let g:lightline = {
        \ 'active': {
        \       'left': [
        \               [ 'mode', 'paste' ],
        \               [ 'gitbranch', 'readonly', 'filename', 'modified' ]
        \       ]
        \ },
        \ 'component_function': {
        \       'gitbranch': 'FugitiveHead'
        \ },
        \ }
