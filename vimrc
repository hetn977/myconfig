set laststatus=2
set t_Co=256
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
let g:powerline_pycmd="py3"
let mapleader=" "
syntax on
set number
set norelativenumber
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

noremap ( :split<CR>
noremap ) :vsplit<CR>

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

noremap i k
noremap k j
noremap j h
noremap h i
noremap I 5k
noremap K 5j

map s <nop>
map S :w!<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

call plug#begin('~/.vim/plugged')
call plug#end()

set paste

map <F5> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!clear<"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc

