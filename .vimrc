if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
  autocmd VimEnter * PlugInstall --sync | source $VIMRC
endif

syntax on

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
set shiftwidth=2
set tabstop=2
set autoindent

set encoding=utf-8
set linebreak
set wrap

set laststatus=2

let mapleader = " "

" shortcut for fast saving (space + w)

set cmdheight=1

set hid

set cursorline
set lazyredraw

set magic

set nobackup
set nowb
set noswapfile 

colorscheme minimalist

call plug#begin('~/.vim/plugged')

  Plug 'arcticicestudio/nord-vim'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'ycm-core/YouCompleteMe'
  Plug 'preservim/nerdcommenter'
  Plug 'dikiaap/minimalist'
  Plug 'davidhalter/jedi-vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'jiangmiao/auto-pairs'
  Plug 'rust-lang/rust.vim'
  Plug 'fannheyward/coc-rust-analyzer'

call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
nmap <leader>w :w!<cr>
nmap <F3> :NERDTreeToggle<CR>
nmap <C-f> :Files<CR>
nmap <C-n> :bn<CR>
nmap <C-p> :bp<CR>
nmap <C-a> ^
nmap <C-w> $
imap hh <esc>

set term=xterm-256color

let g:jedi#environment_path = "venv"
