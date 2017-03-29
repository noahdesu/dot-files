set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'wincent/command-t'

call vundle#end()
"filetype plugin indent on
" To ignore plugin indent changes, instead use:
filetype plugin on

" leader and vimrc editting
let mapleader = ","
let g:mapleader = ","
map <leader>e :e! ~/.vimrc<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc

set laststatus=2

let g:vim_markdown_folding_disabled = 1
set number

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set sws=4
set linebreak
set tw=78
set cindent
set autoindent
set smartindent
set nowrap

set backspace=indent,eol,start

set cinoptions=g1,h1

autocmd filetype htmldjango setlocal expandtab ts=2 sw=2 sws=2
autocmd filetype python setlocal expandtab ts=4 sw=4 sws=4
autocmd filetype c setlocal noexpandtab ts=8 sw=8 sws=8
autocmd filetype cpp setlocal expandtab ts=2 sw=2 sws=2
