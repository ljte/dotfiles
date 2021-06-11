if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if !has("nvim")
  set term=xterm-256color
endif

syntax on
set autoread

set number relativenumber
set scrolloff=5
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

call plug#begin('~/.vim/plugged')

  " nerd
  Plug 'preservim/nerdtree'
  Plug 'preservim/nerdcommenter'

  " useful utils
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'machakann/vim-highlightedyank'

  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'airblade/vim-rooter'

  " code related
  Plug 'rust-lang/rust.vim'
  "Plug 'ycm-core/YouCompleteMe'
  Plug 'dense-analysis/ale'
  Plug 'dag/vim-fish'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " themes related
  Plug 'Soares/base16.nvim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'dikiaap/minimalist'
  Plug 'cespare/vim-toml'
  Plug 'arcticicestudio/nord-vim'

call plug#end()

set termguicolors
set bg=dark

colorscheme tomorrow

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let mapleader = ","

nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
nmap <leader>w :w<cr>
nmap <leader>q :wqa<cr>
nmap <leader>Q :qa!<cr>
nmap <C-q> :q<cr>
"nmap <leader><leader>Q :qa!<cr>
nmap <leader>e :NERDTreeToggle<CR>
nmap <C-f> :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>r :Rg 
nmap <leader>h :History<CR>
nmap <C-a> ^
nmap <C-e> $
nmap <leader>o <C-w>o

" map escape
inoremap <C-j> <esc>
vnoremap <C-j> <esc>
inoremap <C-c> <esc>
vnoremap <C-c> <esc>

let g:gitgutter_sign_added = "*"
let g:gitgutter_sign_modified = "~"
let g:gitgutter_sign_removed = "^"
let g:gitgutter_async = 1
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1

" colors for realtime git updates
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1

set updatetime=250

"   '*': ['trim_whitespace'],
let g:ale_fixers = {
\   'python': ['isort', 'add_blank_lines_for_python_control_statements', 'autoimport', 'black'],
\   'rust': ['rustfmt'],
\}
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 1

let g:ycm_auto_hover = 1

let $FZF_DEFAULT_COMMAND = "find ."

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" navigate in completion list with tab and s-tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" make coc-rust format code on save
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <leader>d :call CocAction("jumpDefinition")<cr>
nmap <leader>c <Plug>(coc-references)

