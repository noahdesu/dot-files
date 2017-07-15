#!/bin/bash

function _link() {
  ln -s $PWD/$1 $HOME/$2
}

function link() {
  _link $1 $1
}

#_link vim2/.vim .vim
#_link vim2/.vimrc .vimrc
#link .vim
#link .vimrc
#_link .global.gitignore .gitignore
