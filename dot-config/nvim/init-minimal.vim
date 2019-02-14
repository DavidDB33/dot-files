if empty(glob('~/.local/share/nvim/site/autoload/plug.vim')) " auto install vim plugin (only one time)
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin() " Init load plugins
"Plug 'crusoexia/vim-monokai'
Plug 'morhetz/gruvbox'
Plug 'kenwheeler/glow-in-the-dark-gucci-shark-bites-vim'
call plug#end() " End load plugins
function! TrackLine() " F10 functionallity
    if (&scrolloff == 0)
        set so=999
    else
        set so=0
    endif
    set scrolloff?
endfunction
" Set key maps
map <F10> :call TrackLine()<CR>
map <F5> :tabp<CR>
map <F6> :tabn<CR>
map <F7> :bp<CR>
map <F8> :bn<CR>
map <F9> :b#<CR>
inoremap jk <Esc>
noremap <backspace> :noh<return>
" Set env vars
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set scrolloff=0
set autoindent
set t_Co=256
set termguicolors
set background=dark
set indentexpr=
" For diff mode
" if &diff
"     set diffopt+=iwhite
" endif
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultiCompileFormats = 'pdf, aux'
let g:gruvbox_contrast_dark = 'hard'
let g:airline_theme = 'sharkbites'
let b:did_indent = 1
""" colorscheme sharkbites
""" set black background
""" highlight Normal guibg=black guifg=white 
colorscheme gruvbox
highlight Normal guibg=black
