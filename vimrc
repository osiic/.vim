" ===============================
" Super Simple Vim Config (Daily)
" ===============================

" --- Basics ---
set nocompatible
syntax on
set encoding=utf-8
set number
set relativenumber
set hidden
set ruler
set showcmd

" --- Colorscheme (Cappuccino-ish) ---
colorscheme desert
set background=dark

" --- Indentation ---
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" --- Wrapping ---
set wrap
set linebreak
set breakindent
set showbreak=↳\ 

" --- Search ---
set ignorecase
set smartcase
set hlsearch
set incsearch

" --- File navigation ---
set wildmenu
set wildmode=longest:full,full
set path+=**

" --- Keymaps ---
let mapleader=" "

" jk to escape insert mode
inoremap jk <Esc>

" File explorer on the right
nnoremap <leader>e :Vex<CR>

" Quit
nnoremap <leader>q :q<CR>

" Search (Ctrl-f starts /)
nnoremap <C-f> /

" Find file
nnoremap <leader>ff :find 

" Prettier-like reindent whole file
nnoremap <leader>s gg=G``

" --- Misc QoL ---
set clipboard=unnamedplus   " use system clipboard if available
set mouse=a                 " enable mouse support
