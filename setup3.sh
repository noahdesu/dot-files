#!/bin/bash

function link() {
  rm -f $HOME/$1
  ln -s $PWD/$1 $HOME/$1 || true
}

link .tmux.conf
link .gitconfig
link .vim
link .vimrc
