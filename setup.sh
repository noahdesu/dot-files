#!/bin/bash

function link() {
  ln -s $PWD/$1 $HOME/$1
}

link .gitconfig
link .tmux.conf
link .vimrc
link .vim
link .fonts
