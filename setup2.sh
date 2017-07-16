#!/bin/bash

set -x
set -e

function _link() {
  rm -f $HOME/$2
  ln -s $PWD/$1 $HOME/$2 || true
}

function link() {
  _link $1 $1
}

sudo dnf update -y
sudo dnf install -y git vim-enhanced docker tmux

link .gitconfig
link .tmux.conf
link .fonts

sudo systemctl enable docker
sudo systemctl start docker

mkdir -p $HOME/src

function getrepo {
  local ghrepo=$1
  if [[ ! $ghrepo =~ \/([a-zA-Z0-1\-]+)\.git ]]; then
    echo "invalid github repo: $ghrepo"
    exit 1
  fi
  local dir=$HOME/src/${BASH_REMATCH[1]}
  if [ ! -d "$dir" ]; then
    tmpdir=$(mktemp -d)
    git clone --recursive git@github.com:$1 $tmpdir
    mv $tmpdir $dir
  fi
}

getrepo noahdesu/zlog.git
getrepo noahdesu/dot-files.git
getrepo noahdesu/thesis.git
getrepo ceph/ceph.git

pushd $HOME/src/zlog
./install-deps.sh
popd

pushd $HOME/src/ceph
./install-deps.sh
popd
