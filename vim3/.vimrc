set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'wincent/command-t'
call vundle#end()
filetype plugin indent on

set number
let mapleader = ","

let g:CommandTFileScanner = "git"
let g:CommandTMaxFiles = 2000000

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set textwidth=80
set cindent
set autoindent
set smartindent
set nowrap

set cinoptions=g1,h1
