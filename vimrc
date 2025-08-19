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
set showtabline=2        " always show tabline (to see buffers)

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
let g:netrw_winsize = 30 " sidebar width (percent of screen)

" jk / kj to escape insert mode
inoremap jk <Esc>
inoremap kj <Esc>

" Save file with Ctrl-s
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
vnoremap <C-s> <Esc>:w<CR>gv

" File explorer (always right side)
nnoremap <leader>e :Vexplore!<CR>

" Quit
nnoremap <leader>q :q<CR>

" Search (Ctrl-f starts /)
nnoremap <C-f> /

" Find file
nnoremap <leader>ff :find 

" Prettier-like reindent whole file
nnoremap <leader>s gg=G``

" --- Window navigation ---
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" --- Window resizing ---
nnoremap <C-S-h> :vertical resize -2<CR>
nnoremap <C-S-l> :vertical resize +2<CR>
nnoremap <C-S-j> :resize -2<CR>
nnoremap <C-S-k> :resize +2<CR>

" --- Buffer navigation ---
nnoremap <A-J> :bprevious<CR>
nnoremap <A-K> :bnext<CR>

" --- Misc QoL ---
set clipboard=unnamedplus   " use system clipboard if available
set mouse=a                 " enable mouse support

" --- Netrw settings ---
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4   " open files in current window
let g:netrw_altv = 1
let g:netrw_keepdir = 0

" --- Custom netrw mappings ---
augroup netrw_mapping
  autocmd!
  " r = rename
  autocmd FileType netrw nnoremap <buffer> r R
  " d = delete
  autocmd FileType netrw nnoremap <buffer> d D
  " % = new file + open in main buffer
  autocmd FileType netrw nnoremap <buffer> % :call NetrwNewFile()<CR>
augroup END

" --- Custom netrw functions ---
function! NetrwNewFile()
  let l:filename = input("New file: ")
  if l:filename != ""
    " buka file baru, otomatis nutup explorer
    execute 'enew'
    execute 'edit' l:filename
    write
  endif
endfunction
