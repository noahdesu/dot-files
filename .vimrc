" don't restrict to vi
set nocompatible

" enable filetype plugin
filetype plugin on
filetype indent on

" Leader and vimrc editting
let mapleader = ","
let g:mapleader = ","
map <leader>e :e! ~/.vimrc<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc

" line numbers and status bar
set number
set showmode
set history=700

" Search, case, spelling
set ignorecase
set smartcase
set hlsearch
set incsearch
set spelllang=en_us

" Color, font, syntax
syntax enable

autocmd filetype c setlocal noexpandtab ts=8 sw=8 sws=8
autocmd filetype ruby setlocal expandtab ts=2 sw=2 sws=2
