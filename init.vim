set laststatus=2
set t_Co=256
let g:powerline_pycmd="py3"
let mapleader=" "
syntax on
set number
set relativenumber
set wrap
set showcmd
set wildmenu
set cursorline

set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

noremap y "+y

map <LEADER>l <C-w>l
map <LEADER>i <C-w>k
map <LEADER>j <C-w>h
map <LEADER>k <C-w>j

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map fj :tabe<CR>
map fk :-tabnext<CR>
map fl :+tabnext<CR>

map sv <C-w>t<C-w>H
map sc <C-w>t<C-w>K

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

noremap i k
noremap k j
noremap j h
noremap I 5k
noremap K 5j
noremap J 5h
noremap L 5l

noremap h i
noremap H I

map s <nop>
map S :w!<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

call plug#begin('~/.config/nvim/plugged')

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/space-vim-theme'
Plug 'dracula/vim'

" Pretty Dress
Plug 'bling/vim-bufferline'
Plug 'theniceboy/vim-deus'

" File navigation
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" Toml file support
Plug 'cespare/vim-toml', { 'for': ['toml', 'vim-plug'] }

" Snippets
" Plug 'SirVer/ultisnips'
Plug 'theniceboy/vim-snippets'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets
" Plug 'SirVer/ultisnips'
Plug 'theniceboy/vim-snippets'

call plug#end()

set termguicolors

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-i>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" ===
" === rnvimr
" ===
let g:rnvimr_ex_enable = 1
let g:rnvimr_pick_enable = 1
let g:rnvimr_draw_border = 0
" let g:rnvimr_bw_enable = 1
highlight link RnvimrNormal CursorLine
nnoremap <silent> <LEADER>r :RnvimrSync<CR>:RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': &columns,
            \ 'height': &lines,
            \ 'col': 0,
            \ 'row': 0,
            \ 'style': 'minimal' }
let g:rnvimr_presets = [{'width': 1.0, 'height': 1.0}]




let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256

" Airline
let g:airline_theme='dracula'
let g:airline#extensions#tabline#buffer_nr_show=1

set pastetoggle=<F11> 

map <F5> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc
