syntax on
set autoread
set mouse=a

set number relativenumber
set scrolloff=10
set hlsearch
set incsearch
set ignorecase
set smartcase

set wildmenu
set ruler
set showmatch

set novisualbell
set noerrorbells

set backspace=eol,start,indent
set splitbelow splitright

set smartindent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent

set encoding=utf-8
set linebreak
set wrap

set laststatus=2

set cmdheight=1

set hid

set cursorline
set lazyredraw

set magic

set nobackup
set nowb
set noswapfile

" save undo history
set undodir=~/.vimdid
set undofile

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

set notermguicolors
set bg=dark

colorscheme delek

let mapleader = ","

nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
nmap <leader>w :w<cr>
nmap <leader>q :wqa<cr>
nmap <leader>o <C-w>o

" map escape
inoremap <C-j> <esc>
vnoremap <C-j> <esc>
inoremap <C-c> <esc>
vnoremap <C-c> <esc>

call plug#begin('~/.vim/plugged')

Plug 'machakann/vim-highlightedyank'

call plug#end()
