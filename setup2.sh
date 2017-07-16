#!/bin/bash

set -e

function rootuser {
  echo "##### disable root password"
  sudo passwd -l root
  echo "====> done"
}

function firewall {
  echo "##### setting up firewalld"
  local curr=$(firewall-cmd --get-default-zone)
  if [ "x$curr" != "xdrop" ]; then
    sudo firewall-cmd --set-default-zone drop
  fi
  firewall-cmd --get-active-zones
  echo "status: $(sudo firewall-cmd --state)"
  echo "====> done"
}

function packages {
  echo "##### install software packages"

  sudo dnf update -y
  sudo dnf install -y git vim-enhanced docker tmux

  if ! systemctl is-enabled docker.service; then
    sudo systemctl enable docker
    sudo systemctl start docker
  fi

  if [ ! -e .setup.packages ]; then
    touch .setup.packages
    echo "====> restart computer..."
    exit 0
  fi

  echo "====> done"
}

function clonerepo {
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

function gitrepos {
  mkdir -p $HOME/src

  clonerepo noahdesu/zlog.git
  clonerepo noahdesu/thesis.git
  clonerepo ceph/ceph.git

  pushd $HOME/src/zlog
  ./install-deps.sh
  popd

  pushd $HOME/src/ceph
  ./install-deps.sh
  popd

  pushd $HOME/src/thesis
  ./build.sh
  popd
}

function link() {
  rm -f $HOME/$1
  ln -s $PWD/$1 $HOME/$1 || true
}

rootuser
firewall
link .gitconfig
link .tmux.conf
link .fonts
packages
gitrepos
