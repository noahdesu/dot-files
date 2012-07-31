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
color molokai

autocmd filetype c setlocal noexpandtab ts=8 sw=8 sws=8
autocmd filetype ruby setlocal expandtab ts=2 sw=2 sws=2
autocmd filetype sh setlocal expandtab ts=2 sw=2 sws=2
autocmd filetype python setlocal expandtab ts=4 sw=4 sws=4

" setup the bottom status bar
set laststatus=2
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset
