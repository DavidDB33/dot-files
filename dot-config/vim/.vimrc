function! Myfunc()
    if (&scrolloff == 0)
        set so=999
    else
        set so=0
    endif
    set scrolloff?
endfunction
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultiCompileFormats = 'pdf, aux'
set expandtab
set softtabstop=4
set tabstop=4
set scrolloff=0
set autoindent
"filetype indent on
map <F5> :tabp<CR>
map <F6> :tabn<CR>
map <F7> :bp<CR>
map <F8> :bn<CR>
map <F9> :b#<CR>
map <F10> :call Myfunc()<CR>
inoremap jk <Esc>
if &diff
    " diff mode
    set diffopt+=iwhite
endif
set t_Co=256  " vim-monokai now only support 256 colours in terminal.
