#!/bin/bash

function _link() {
  ln -s $PWD/$1 $HOME/$2
}

function link() {
  _link $1 $1
}

link .gitconfig
link .tmux.conf
link .vimrc
link .vim
link .fonts
_link .global.gitignore .gitignore

sudo apt-get -y update
sudo apt-get -y install vim tmux
