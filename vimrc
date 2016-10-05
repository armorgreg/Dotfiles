set nocompatible
filetype off
syntax on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'justinmk/vim-sneak'

Plugin 'Valloric/YouCompleteMe'

Plugin 'rdnetto/YCM-Generator'

Plugin 'maralla/validator.vim'

call vundle#end()
filetype plugin indent on

set number
set relativenumber

set ruler

set visualbell

set encoding=utf-8

set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop =2
set expandtab
set noshiftround

set scrolloff=3
set backspace=indent,eol,start

nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set hidden

set ttyfast

set laststatus=2

set showmode
set showcmd

"<Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr>

inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

"enter inserts new line
noremap <CR> o<Esc>

map <leader>q gqip

"Fixes weird background issues.
if &term =~ '256color'
    set t_ut=
endif

set t_Co=256
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1

set background=dark
colo vice

let g:sneak#s_next = 1

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/.ycm_extra_conf.py'

let g:ycm_confirm_extra_conf = 0

let mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>sp :set paste<CR>

cmap w!! w !sudo tee > /dev/null %

set clipboard=unnamedplus








