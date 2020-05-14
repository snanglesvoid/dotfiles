if &compatible
  set nocompatible
endif

call plug#begin('~/.vim/plugged')

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " add file icons to browser (and lighline?)
  Plug 'ryanoasis/vim-devicons'
  "Plug 'airblade/vim-gitgutter'

  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-unimpaired'
  " 
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'bdauria/angular-cli.vim'
  Plug 'itchyny/lightline.vim' " Status Line
  Plug 'edkolev/tmuxline.vim' " Status Line Tmux integration
  Plug 'junegunn/fzf', { 'do' : { -> fzf#install()}}
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'jiangmiao/auto-pairs' " bracket completion 
  Plug 'terryma/vim-multiple-cursors'
  Plug 'Valloric/MatchTagAlways'
  Plug 'jparise/vim-graphql'
  Plug 'majutsushi/tagbar'
  Plug 'ternjs/tern_for_vim'
  Plug 'justinmk/vim-sneak'
  Plug 'liuchengxu/vim-which-key'
  Plug 'voldikss/vim-floaterm'
  Plug 'vim-scripts/loremipsum'
  " Elm
  Plug 'andys8/vim-elm-syntax'
  " React
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'peitalin/vim-jsx-typescript'
  " colorschemes
  Plug 'morhetz/gruvbox'
  Plug 'sickill/vim-monokai'
  Plug 'https://github.com/gosukiwi/vim-atom-dark'
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'mhinz/vim-janah'
  
call plug#end()


source $HOME/.config/nvim/basic-settings.vim
source $HOME/.config/nvim/plugin-config/lightline.vim
source $HOME/.config/nvim/plugin-config/coc.vim
source $HOME/.config/nvim/plugin-config/colorscheme.vim
source $HOME/.config/nvim/plugin-config/fzf.vim
source $HOME/.config/nvim/plugin-config/ctags.vim
source $HOME/.config/nvim/plugin-config/sneak.vim
source $HOME/.config/nvim/plugin-config/which-key.vim

" lines to save text folding and cursor position
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview
" fix error with empty files
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview

" angular ci integration
autocmd VimEnter * if globpath('.,..,../..','angular.json') != '' | call angular_cli#init() | endif
let g:angular_cli_stylesheet_format = 'css'
let g:gnu_grep = 'ggrep'

