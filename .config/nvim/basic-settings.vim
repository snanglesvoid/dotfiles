" Basics

let mapleader = ' '

syntax enable
set hidden
set nowrap

set number
set relativenumber
set autoindent
set smartindent
set smarttab
set cindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set textwidth=100
set updatetime=300
set iskeyword+=-       " treat dash seperated words as a word text object
set clipboard=unnamedplus " system clipboard integration (i.e \"+yy, \"+p etc)
set mouse=a   " vi mouse support
set signcolumn=yes  " always show signcolumns

autocmd BufWinEnter *? set formatoptions-=cro
" KEYBINDINGS

" keep visual selection after indent
vnoremap < <gv
vnoremap > >gv

" Tab Navigation
map <S-Right> :tabn<CR>
map <S-Left> :tabp<CR>
map <C-t> :tabnew<CR>

inoremap jk <ESC>

filetype plugin indent on
syntax on
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>
" nnoremap J 5j

let g:surround_{char2nr('b')} = "**\r**"
