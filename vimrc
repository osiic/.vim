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

" --- Misc QoL ---
set clipboard=unnamedplus   " use system clipboard if available
set mouse=a                 " enable mouse support

" --- Netrw like Neo-tree ---
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_keepdir = 0

augroup netrw_mapping
  autocmd!
  autocmd FileType netrw nnoremap <buffer> r R     " r = rename
  autocmd FileType netrw nnoremap <buffer> d D     " d = delete
  " a = add new file + open it
  autocmd FileType netrw nnoremap <buffer> a :call NetrwNewFile()<CR>
  " A = add new folder
  autocmd FileType netrw nnoremap <buffer> A :call NetrwNewDir()<CR>
augroup END

" --- Custom netrw functions ---
function! NetrwNewFile()
  let l:filename = input("New file: ")
  if l:filename != ""
    execute 'edit' l:filename
    write
  endif
endfunction

function! NetrwNewDir()
  let l:dirname = input("New directory: ")
  if l:dirname != ""
    call mkdir(l:dirname, "p")
    edit .
  endif
endfunction
