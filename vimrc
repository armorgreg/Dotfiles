set nocompatible

" Let Vundle handle all vim plugins.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Enable sneak movement on s
Plugin 'justinmk/vim-sneak'

" On-the-fly syntax checks.
Plugin 'maralla/validator.vim'

" Vim autocomplete
Plugin 'Valloric/YouCompleteMe'

" Generate YCM-configs.
Plugin 'rdnetto/YCM-Generator'

" Autocompletion for C/C++.
Plugin 'Rip-Rip/clang_complete'

" Tab support for autocompletion.
Plugin 'ervandew/supertab'

" File fuzzy search
Plugin 'ctrlpvim/ctrlp.vim'

" Better JavaScript support.
Plugin 'pangloss/vim-javascript'

" Directory exploration
Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on

" Automatically indent file
set autoindent

syntax on

" Persistent undo
 set undofile
 set undodir=!/.vim/undodir

"Enable mouse support
set mouse=a

" Use more advanced encryption for VimCrypt.
:setlocal cm=blowfish

" Current line shows actual number
set number
" All other lines show distance from current line
set relativenumber
" Displays line/column number in bottom right hand corner.
set ruler
" Enables filename/ruler for vim.
set laststatus=2

" Sets paste on F2.
set pastetoggle=<F2>

" Let the cursor blink when not active.
set visualbell

set encoding=utf-8

" Wrap text visually
set wrap

" Set specific width
set textwidth=79

" Let vim decide how to format
set formatoptions=tcqrn1

" Expandtab inserts spaces when Tab is pressed. 2 spaces per tab.
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Round indents to the nearest multiple of shiftwidth.
set shiftround

" Keep 3 lines below the cursor when scrolling.
set scrolloff=3

" Allow backspacing over autoindents, end of lines, and the beginning of lines.
set backspace=indent,eol,start

" Allow j and k to always move the cursor one line up or down, even in wrapped
" paragraphs.
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Hides buffers without closing them, even when shifting focus to another file.
set hidden

" Small performance boosts for vim.
set ttyfast
set lazyredraw

" Shows what mode you're currently in- ie, insert mode, visual mode
set showmode
" Shows what command is currently being typed.
set showcmd

"<Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Smart searching- case insensitive, shortcuts abound.
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Disables help keys.
inoremap <F1> <ESC>:set invfullscreen<CR>
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Enter inserts new line
noremap <CR> o<Esc>


" Fixes weird background issues.
if &term =~ '256color'
    set t_ut=
endif

set t_Co=256

" Uncomment to set up Solarized colorschemes.
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1

" More colour shit.
set background=dark
colo vice

" Default behaviour for vim-sneak and other plugins.
let g:sneak#s_next = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:SuperTabDefaultCompletionType = "<c-n>"

" Assign Space to leader key. Gloriousness ensues.
let mapleader = "\<Space>"

nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>! :q!<CR>
nnoremap <Leader>b <C-w>
nnoremap <Leader>f :NERDTreeToggle<CR>
nnoremap <Leader>r viwp
nnoremap <Leader>y yiw
nnoremap <Leader>C :make ./out<CR>
" Convert C-style comments into cout statements, and vice versa.
nnoremap <Leader>d mn^vf/lccout << "<esc>A\n";<esc>`n:delmarks n<CR><C-l>
nnoremap <Leader>D mn^cf"// <esc>f\d$`n:delmarks n<CR><C-l>

" Remap w!! to sudo-edit the file, in case you forget.
cmap w!! w !sudo tee % >/dev/null

" Let vim's unnamed buffer interact with the system clipboard.
set clipboard=unnamedplus,autoselect,unnamed

vnoremap $ $h

nnoremap ' `
nnoremap ` '




